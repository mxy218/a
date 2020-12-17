.class Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;
.super Ljava/lang/Object;
.source "FlymeCreateFPActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->startTipsEnrollFingerSideLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V
    .registers 2

    .line 868
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 871
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2400(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12$1;-><init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$12;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
