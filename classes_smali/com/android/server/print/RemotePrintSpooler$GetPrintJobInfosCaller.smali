.class final Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;
.super Landroid/util/TimedRemoteCaller;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GetPrintJobInfosCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/TimedRemoteCaller<",
        "Ljava/util/List<",
        "Landroid/print/PrintJobInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/print/IPrintSpoolerCallbacks;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 724
    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    .line 725
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller$1;

    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller$1;-><init>(Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    .line 731
    return-void
.end method

.method static synthetic access$600(Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;Ljava/lang/Object;I)V
    .registers 3

    .line 719
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public getPrintJobInfos(Landroid/print/IPrintSpooler;Landroid/content/ComponentName;II)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrintSpooler;",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 736
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->onBeforeRemoteCall()I

    move-result v6

    .line 737
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, v6

    invoke-interface/range {v0 .. v5}, Landroid/print/IPrintSpooler;->getPrintJobInfos(Landroid/print/IPrintSpoolerCallbacks;Landroid/content/ComponentName;III)V

    .line 738
    invoke-virtual {p0, v6}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->getResultTimed(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
