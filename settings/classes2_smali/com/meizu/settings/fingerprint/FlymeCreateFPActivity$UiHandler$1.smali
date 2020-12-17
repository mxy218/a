.class Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler$1;
.super Ljava/lang/Object;
.source "FlymeCreateFPActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;


# direct methods
.method constructor <init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;)V
    .registers 2

    .line 431
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 434
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler$1;->this$1:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$800(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V

    return-void
.end method
