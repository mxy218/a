.class final Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;
.super Landroid/util/TimedRemoteCaller;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetPrintJobTagCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/TimedRemoteCaller<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/print/IPrintSpoolerCallbacks;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 788
    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    .line 789
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;

    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;-><init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    .line 795
    return-void
.end method

.method static synthetic access$900(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;Ljava/lang/Object;I)V
    .registers 3

    .line 784
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public setPrintJobTag(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 799
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->onBeforeRemoteCall()I

    move-result v0

    .line 800
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    invoke-interface {p1, p2, p3, v1, v0}, Landroid/print/IPrintSpooler;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 801
    invoke-virtual {p0, v0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->getResultTimed(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method