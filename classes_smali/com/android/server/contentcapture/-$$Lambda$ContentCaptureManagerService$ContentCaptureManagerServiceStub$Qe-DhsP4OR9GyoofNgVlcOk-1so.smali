.class public final synthetic Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$ContentCaptureManagerServiceStub$Qe-DhsP4OR9GyoofNgVlcOk-1so;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$ContentCaptureManagerServiceStub$Qe-DhsP4OR9GyoofNgVlcOk-1so;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

    iput-object p2, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$ContentCaptureManagerServiceStub$Qe-DhsP4OR9GyoofNgVlcOk-1so;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$ContentCaptureManagerServiceStub$Qe-DhsP4OR9GyoofNgVlcOk-1so;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

    iget-object v1, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$ContentCaptureManagerServiceStub$Qe-DhsP4OR9GyoofNgVlcOk-1so;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->lambda$getContentCaptureConditions$2$ContentCaptureManagerService$ContentCaptureManagerServiceStub(Ljava/lang/String;)V

    return-void
.end method