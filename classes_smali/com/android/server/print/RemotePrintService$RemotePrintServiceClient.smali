.class final Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;
.super Landroid/printservice/IPrintServiceClient$Stub;
.source "RemotePrintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RemotePrintServiceClient"
.end annotation


# instance fields
.field private final mWeakService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/print/RemotePrintService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintService;)V
    .registers 3

    .line 681
    invoke-direct {p0}, Landroid/printservice/IPrintServiceClient$Stub;-><init>()V

    .line 682
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    .line 683
    return-void
.end method

.method private throwIfPrinterIdTampered(Landroid/content/ComponentName;Landroid/print/PrinterId;)V
    .registers 5

    .line 848
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 851
    return-void

    .line 849
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid printer id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private throwIfPrinterIdsForPrinterInfoTampered(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .line 831
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 832
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_17

    .line 833
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterInfo;

    invoke-virtual {v2}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v2

    .line 834
    invoke-direct {p0, p1, v2}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdTampered(Landroid/content/ComponentName;Landroid/print/PrinterId;)V

    .line 832
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 836
    :cond_17
    return-void
.end method

.method private throwIfPrinterIdsTampered(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 840
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 841
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    .line 842
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 843
    invoke-direct {p0, p1, v2}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdTampered(Landroid/content/ComponentName;Landroid/print/PrinterId;)V

    .line 841
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 845
    :cond_13
    return-void
.end method


# virtual methods
.method public getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;
    .registers 6

    .line 702
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 703
    if-eqz v0, :cond_20

    .line 704
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 706
    :try_start_e
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v0

    const/4 v3, -0x2

    invoke-virtual {v0, p1, v3}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1b

    .line 709
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 706
    return-object p1

    .line 709
    :catchall_1b
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 712
    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPrintJobInfos()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .line 687
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 688
    if-eqz v0, :cond_25

    .line 689
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 691
    :try_start_e
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2600(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v4, -0x4

    const/4 v5, -0x2

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_20

    .line 694
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 691
    return-object v0

    .line 694
    :catchall_20
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 697
    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 856
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 857
    if-eqz v0, :cond_1e

    .line 858
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 860
    :try_start_e
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2800(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 862
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 863
    goto :goto_1e

    .line 862
    :catchall_19
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 865
    :cond_1e
    :goto_1e
    return-void
.end method

.method public onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    .registers 5

    .line 800
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 801
    if-eqz v0, :cond_29

    .line 802
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    .line 803
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2600(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdsForPrinterInfoTampered(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 804
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 806
    :try_start_19
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2800(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;->onPrintersAdded(Ljava/util/List;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_24

    .line 808
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 809
    goto :goto_29

    .line 808
    :catchall_24
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 811
    :cond_29
    :goto_29
    return-void
.end method

.method public onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    .registers 5

    .line 816
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 817
    if-eqz v0, :cond_29

    .line 818
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    .line 819
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2600(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdsTampered(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 820
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 822
    :try_start_19
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2800(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;->onPrintersRemoved(Ljava/util/List;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_24

    .line 824
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 825
    goto :goto_29

    .line 824
    :catchall_24
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 827
    :cond_29
    :goto_29
    return-void
.end method

.method public setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    .registers 7

    .line 717
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 718
    if-eqz v0, :cond_1f

    .line 719
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 721
    :try_start_e
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_1a

    .line 723
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 721
    return p1

    .line 723
    :catchall_1a
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 726
    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method public setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    .registers 6

    .line 731
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 732
    if-eqz v0, :cond_1f

    .line 733
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 735
    :try_start_e
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_1a

    .line 737
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 735
    return p1

    .line 737
    :catchall_1a
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 740
    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method public setProgress(Landroid/print/PrintJobId;F)V
    .registers 6

    .line 759
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 760
    if-eqz v0, :cond_1e

    .line 761
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 763
    :try_start_e
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->setProgress(Landroid/print/PrintJobId;F)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 765
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 766
    goto :goto_1e

    .line 765
    :catchall_19
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 768
    :cond_1e
    :goto_1e
    return-void
.end method

.method public setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    .registers 6

    .line 772
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 773
    if-eqz v0, :cond_1e

    .line 774
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 776
    :try_start_e
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 778
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 779
    goto :goto_1e

    .line 778
    :catchall_19
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 781
    :cond_1e
    :goto_1e
    return-void
.end method

.method public setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    .registers 7

    .line 786
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 787
    if-eqz v0, :cond_1e

    .line 788
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 790
    :try_start_e
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler;->setStatus(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 792
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 793
    goto :goto_1e

    .line 792
    :catchall_19
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 795
    :cond_1e
    :goto_1e
    return-void
.end method

.method public writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    .registers 6

    .line 745
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 746
    if-eqz v0, :cond_1e

    .line 747
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 749
    :try_start_e
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 751
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 752
    goto :goto_1e

    .line 751
    :catchall_19
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 754
    :cond_1e
    :goto_1e
    return-void
.end method
