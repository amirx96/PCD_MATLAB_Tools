#/bin/bash
i=1
for file in *.pcd

do
	$(pcl_convert_pcd_ascii_binary $file $i.pcd 0 )
	i=$(($i+1))
	mv $file $file.old
done
