.class Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;
.super Landroid/os/Handler;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StorageManagerServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 587
    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    .line 588
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 589
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 593
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "StorageManagerService"

    packed-switch v0, :pswitch_data_166

    goto/16 :goto_165

    .line 704
    :pswitch_a  #0xe
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$2100(Lcom/android/server/StorageManagerService;I)V

    goto/16 :goto_165

    .line 599
    :pswitch_19  #0xd
    iget-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->access$1000(Lcom/android/server/StorageManagerService;)V

    .line 600
    goto/16 :goto_165

    .line 699
    :pswitch_20  #0xc
    const-string v0, "Aborting idle maintenance"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V

    .line 701
    goto/16 :goto_165

    .line 694
    :pswitch_30  #0xb
    const-string v0, "Running idle maintenance"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    .line 696
    goto/16 :goto_165

    .line 690
    :pswitch_40  #0xa
    iget-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->access$2000(Lcom/android/server/StorageManagerService;)V

    .line 691
    goto/16 :goto_165

    .line 685
    :pswitch_47  #0x9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/storage/VolumeRecord;

    .line 686
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    iget-object p1, p1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/server/StorageManagerService;->access$1900(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    goto/16 :goto_165

    .line 655
    :pswitch_56  #0x8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/storage/VolumeInfo;

    .line 656
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$1700(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V

    .line 657
    goto/16 :goto_165

    .line 679
    :pswitch_61  #0x7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 680
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1800(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 682
    goto/16 :goto_165

    .line 660
    :pswitch_74  #0x6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/storage/StorageVolume;

    .line 661
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v0

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Volume "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " broadcasting "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 662
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-static {v0}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 666
    if-eqz v0, :cond_165

    .line 667
    new-instance v1, Landroid/content/Intent;

    .line 668
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 669
    const-string v0, "android.os.storage.extra.STORAGE_VOLUME"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 670
    const/high16 v0, 0x5000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 672
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1800(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 673
    goto/16 :goto_165

    .line 646
    :pswitch_d4  #0x5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/storage/VolumeInfo;

    .line 647
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$1500(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring mount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " due to policy"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    goto :goto_165

    .line 651
    :cond_fe
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$1600(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V

    .line 652
    goto :goto_165

    .line 607
    :pswitch_104  #0x4
    const-string v0, "Running fstrim idle maintenance"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :try_start_109
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/server/StorageManagerService;->access$1202(Lcom/android/server/StorageManagerService;J)J

    .line 612
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1300(Lcom/android/server/StorageManagerService;)Ljava/io/File;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->access$1200(Lcom/android/server/StorageManagerService;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setLastModified(J)Z
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_121} :catch_122

    .line 615
    goto :goto_128

    .line 613
    :catch_122
    move-exception v0

    .line 614
    const-string v0, "Unable to record last fstrim!"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :goto_128
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/StorageManagerService;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 622
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    .line 623
    if-eqz p1, :cond_165

    .line 624
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_165

    .line 629
    :pswitch_138  #0x3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/storage/IStorageShutdownObserver;

    .line 630
    nop

    .line 632
    :try_start_13d
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1400(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IVold;->shutdown()V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_146} :catch_148

    .line 633
    const/4 v0, 0x1

    .line 636
    goto :goto_14d

    .line 634
    :catch_148
    move-exception v0

    .line 635
    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 637
    :goto_14d
    if-eqz p1, :cond_165

    .line 639
    if-eqz v0, :cond_152

    goto :goto_153

    :cond_152
    const/4 v1, -0x1

    :goto_153
    :try_start_153
    invoke-interface {p1, v1}, Landroid/os/storage/IStorageShutdownObserver;->onShutDownComplete(I)V
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_156} :catch_157

    .line 641
    :goto_156
    goto :goto_165

    .line 640
    :catch_157
    move-exception p1

    goto :goto_156

    .line 603
    :pswitch_159  #0x2
    iget-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->access$1100(Lcom/android/server/StorageManagerService;)V

    .line 604
    goto :goto_165

    .line 595
    :pswitch_15f  #0x1
    iget-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->access$900(Lcom/android/server/StorageManagerService;)V

    .line 596
    nop

    .line 708
    :cond_165
    :goto_165
    return-void

    :pswitch_data_166
    .packed-switch 0x1
        :pswitch_15f  #00000001
        :pswitch_159  #00000002
        :pswitch_138  #00000003
        :pswitch_104  #00000004
        :pswitch_d4  #00000005
        :pswitch_74  #00000006
        :pswitch_61  #00000007
        :pswitch_56  #00000008
        :pswitch_47  #00000009
        :pswitch_40  #0000000a
        :pswitch_30  #0000000b
        :pswitch_20  #0000000c
        :pswitch_19  #0000000d
        :pswitch_a  #0000000e
    .end packed-switch
.end method
