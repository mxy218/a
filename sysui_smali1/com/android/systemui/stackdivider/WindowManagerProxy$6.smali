.class Lcom/android/systemui/stackdivider/WindowManagerProxy$6;
.super Ljava/lang/Object;
.source "WindowManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

.field final synthetic val$resizing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;Z)V
    .registers 3

    .line 179
    iput-object p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$6;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$6;->val$resizing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 183
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$6;->val$resizing:Z

    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->setSplitScreenResizing(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_21

    :catch_a
    move-exception p0

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error calling setDockedStackResizing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManagerProxy"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method
