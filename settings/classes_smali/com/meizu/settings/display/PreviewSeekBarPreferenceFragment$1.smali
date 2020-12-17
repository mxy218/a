.class Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment$1;
.super Ljava/lang/Object;
.source "PreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Lcom/meizu/settings/display/PreviewPagerAdapter$InflateViewFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 80
    iput-object p1, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment$1;->this$0:Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inflateViewFinished(Lcom/meizu/settings/display/PreviewPagerAdapter;)V
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment$1;->this$0:Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;

    iput-object p1, v0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/meizu/settings/display/PreviewPagerAdapter;

    .line 84
    invoke-static {v0}, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->access$000(Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment$1;->this$0:Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;

    iget-object v0, v0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/meizu/settings/display/PreviewPagerAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 85
    iget-object p0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment$1;->this$0:Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-virtual {p0}, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->onViewInflateFinished()V

    return-void
.end method
