.class Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$2;
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

    .line 226
    iput-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$2;->this$0:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

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

    .line 240
    iget-object p0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$2;->this$0:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-static {p0, p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->access$400(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;I)V

    return-void
.end method
