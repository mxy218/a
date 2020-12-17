.class Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler$2;
.super Ljava/lang/Object;
.source "FlymeCreateFPActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 565
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler$2;->this$1:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 568
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler$2;->this$1:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    const-string p1, "back"

    invoke-static {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$400(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Ljava/lang/String;)V

    return-void
.end method
