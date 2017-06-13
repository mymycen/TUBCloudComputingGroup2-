# Change this variable to the path of the device you want to test
block_dev=/dev/vda





# full write pass
sudo fio --name=writefile --size=10G --filesize=10G \
--filename=$block_dev --bs=1M --nrfiles=1 \
--direct=1 --sync=0 --randrepeat=0 --rw=write --refill_buffers --end_fsync=1 \
--iodepth=200 --ioengine=libaio|tee $(pwd)/fiofullwrite.out

# rand read
sudo fio --time_based --name=benchmark --size=10G --runtime=30 \
--filename=$block_dev --ioengine=libaio --randrepeat=0 \
--iodepth=128 --direct=1 --invalidate=1 --verify=0 --verify_fatal=0 \
--numjobs=4 --rw=randread --blocksize=4k --group_reporting|tee $(pwd)/fiorandread.out

# rand write
sudo fio --time_based --name=benchmark --size=10G --runtime=30 \
--filename=$block_dev --ioengine=libaio --randrepeat=0 \
--iodepth=128 --direct=1 --invalidate=1 --verify=0 --verify_fatal=0 \
--numjobs=4 --rw=randwrite --blocksize=4k --group_reporting|tee $(pwd)/fiorandwrite.out
