.class Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller$1;
.super Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;)V
    .registers 2

    .line 768
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>(Lcom/android/server/print/RemotePrintSpooler$1;)V

    return-void
.end method


# virtual methods
.method public onSetPrintJobStateResult(ZI)V
    .registers 4

    .line 771
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;->access$800(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;Ljava/lang/Object;I)V

    .line 772
    return-void
.end method
