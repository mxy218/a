.class Lcom/meizu/settings/SettingsPreferenceFragment$5;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/SettingsPreferenceFragment;->highlightPreference(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

.field final synthetic val$adapter:Landroid/widget/ListAdapter;

.field final synthetic val$highlight:Landroid/graphics/drawable/Drawable;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/meizu/settings/SettingsPreferenceFragment;Landroid/widget/ListView;ILandroid/graphics/drawable/Drawable;Landroid/widget/ListAdapter;)V
    .registers 6

    .line 394
    iput-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    iput-object p2, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5;->val$listView:Landroid/widget/ListView;

    iput p3, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5;->val$position:I

    iput-object p4, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5;->val$highlight:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5;->val$adapter:Landroid/widget/ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 397
    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2d

    .line 398
    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 399
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    neg-int v0, v0

    .line 400
    iget-object v1, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5;->val$listView:Landroid/widget/ListView;

    iget v2, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5;->val$position:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_34

    .line 402
    :cond_2d
    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5;->val$listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 404
    :goto_34
    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-static {v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->access$700(Lcom/meizu/settings/SettingsPreferenceFragment;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 405
    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5;->val$listView:Landroid/widget/ListView;

    new-instance v1, Lcom/meizu/settings/SettingsPreferenceFragment$5$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/SettingsPreferenceFragment$5$1;-><init>(Lcom/meizu/settings/SettingsPreferenceFragment$5;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_48
    return-void
.end method
