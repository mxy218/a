.class final Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;
.super Landroid/util/TimedRemoteCaller;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnCustomPrinterIconLoadedCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/TimedRemoteCaller<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/print/IPrintSpoolerCallbacks;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 809
    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    .line 810
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller$1;

    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller$1;-><init>(Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    .line 816
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;Ljava/lang/Object;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;
    .param p1, "x1"  # Ljava/lang/Object;
    .param p2, "x2"  # I

    .line 805
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public onCustomPrinterIconLoaded(Landroid/print/IPrintSpooler;Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)Ljava/lang/Void;
    .registers 6
    .param p1, "target"  # Landroid/print/IPrintSpooler;
    .param p2, "printerId"  # Landroid/print/PrinterId;
    .param p3, "icon"  # Landroid/graphics/drawable/Icon;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 820
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;->onBeforeRemoteCall()I

    move-result v0

    .line 821
    .local v0, "sequence":I
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    invoke-interface {p1, p2, p3, v1, v0}, Landroid/print/IPrintSpooler;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 822
    invoke-virtual {p0, v0}, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;->getResultTimed(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1
.end method
