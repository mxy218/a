.class final Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;
.super Landroid/util/TimedRemoteCaller;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GetCustomPrinterIconCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/TimedRemoteCaller<",
        "Landroid/graphics/drawable/Icon;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/print/IPrintSpoolerCallbacks;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 851
    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    .line 852
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller$1;

    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller$1;-><init>(Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    .line 858
    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;Ljava/lang/Object;I)V
    .registers 3

    .line 847
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public getCustomPrinterIcon(Landroid/print/IPrintSpooler;Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 862
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;->onBeforeRemoteCall()I

    move-result v0

    .line 863
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    invoke-interface {p1, p2, v1, v0}, Landroid/print/IPrintSpooler;->getCustomPrinterIcon(Landroid/print/PrinterId;Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 864
    invoke-virtual {p0, v0}, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;->getResultTimed(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Icon;

    return-object p1
.end method