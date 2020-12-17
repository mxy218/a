.class Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$DemoItem;
.super Ljava/lang/Object;
.source "FlymeShopDemoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DemoItem"
.end annotation


# instance fields
.field public setupBtnTextRes:I

.field public setupLogoRes:I

.field public setupSummaryRes:I

.field public setupTitleRes:I

.field final synthetic this$0:Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;IIII)V
    .registers 6

    .line 391
    iput-object p1, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$DemoItem;->this$0:Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput p2, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$DemoItem;->setupLogoRes:I

    .line 393
    iput p3, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$DemoItem;->setupTitleRes:I

    .line 394
    iput p4, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$DemoItem;->setupSummaryRes:I

    .line 395
    iput p5, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$DemoItem;->setupBtnTextRes:I

    return-void
.end method
