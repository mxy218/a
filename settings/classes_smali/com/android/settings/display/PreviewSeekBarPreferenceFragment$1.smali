.class Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$1;
.super Ljava/lang/Object;
.source "PreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$1;->this$0:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

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

    .line 222
    iget-object p0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$1;->this$0:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->access$300(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    const/16 p1, 0x4000

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    return-void
.end method
