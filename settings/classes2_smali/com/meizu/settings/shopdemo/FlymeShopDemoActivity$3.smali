.class Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$3;
.super Ljava/lang/Object;
.source "FlymeShopDemoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$3;->this$0:Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 160
    iget-object p0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$3;->this$0:Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;

    invoke-virtual {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->onBackPressed()V

    return-void
.end method
