.class Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller$1;
.super Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;)V
    .registers 2

    .line 831
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>(Lcom/android/server/print/RemotePrintSpooler$1;)V

    return-void
.end method


# virtual methods
.method public customPrinterIconCacheCleared(I)V
    .registers 4

    .line 834
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;->access$1100(Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;Ljava/lang/Object;I)V

    .line 835
    return-void
.end method
