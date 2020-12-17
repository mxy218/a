.class Lcom/android/server/media/projection/MediaProjectionManagerService$1;
.super Landroid/app/IProcessObserver$Stub;
.source "MediaProjectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 104
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$1;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 4
    .param p1, "pid"  # I
    .param p2, "uid"  # I
    .param p3, "fg"  # Z

    .line 107
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 5
    .param p1, "pid"  # I
    .param p2, "uid"  # I
    .param p3, "serviceTypes"  # I

    .line 111
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$1;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$200(Lcom/android/server/media/projection/MediaProjectionManagerService;III)V

    .line 113
    return-void
.end method

.method public onProcessDied(II)V
    .registers 3
    .param p1, "pid"  # I
    .param p2, "uid"  # I

    .line 117
    return-void
.end method
