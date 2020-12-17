.class Lcom/meizu/settings/display/aod/AODStyleChooseActivity$1;
.super Ljava/lang/Object;
.source "AODStyleChooseActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/aod/AODStyleChooseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/aod/AODStyleChooseActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/aod/AODStyleChooseActivity;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/meizu/settings/display/aod/AODStyleChooseActivity$1;->this$0:Lcom/meizu/settings/display/aod/AODStyleChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    .line 62
    iget-object p0, p0, Lcom/meizu/settings/display/aod/AODStyleChooseActivity$1;->this$0:Lcom/meizu/settings/display/aod/AODStyleChooseActivity;

    invoke-static {p0, p1}, Lcom/meizu/settings/display/aod/AODStyleChooseActivity;->access$002(Lcom/meizu/settings/display/aod/AODStyleChooseActivity;I)I

    return-void
.end method
