.class Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$15;
.super Ljava/lang/Object;
.source "FlymeCreateFPActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->handleShopDemoFeature()V
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

    .line 979
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$15;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 982
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$15;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    const-string p1, "back"

    invoke-static {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$400(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Ljava/lang/String;)V

    return-void
.end method
