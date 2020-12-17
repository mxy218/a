.class Lcom/android/server/GestureLauncherService$1;
.super Ljava/lang/Object;
.source "GestureLauncherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/GestureLauncherService;

    .line 496
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 499
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->access$202(Lcom/android/server/GestureLauncherService;Z)Z

    .line 500
    return-void
.end method
