.class Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment$3;
.super Ljava/lang/Object;
.source "PreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment$3;->this$0:Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;

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

    .line 145
    iget-object p0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment$3;->this$0:Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-static {p0}, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->access$100(Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;)Lcom/meizu/common/widget/PagerIndicator;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/meizu/common/widget/PagerIndicator;->setCirclePosOffset(FI)V

    return-void
.end method

.method public onPageSelected(I)V
    .registers 4

    .line 150
    iget-object v0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment$3;->this$0:Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-static {v0}, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->access$000(Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 151
    iget-object p0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment$3;->this$0:Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-static {p0}, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->access$100(Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;)Lcom/meizu/common/widget/PagerIndicator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PagerIndicator;->setCirclePosition(I)V

    return-void
.end method
