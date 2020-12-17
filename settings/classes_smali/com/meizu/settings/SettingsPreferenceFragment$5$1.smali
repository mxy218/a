.class Lcom/meizu/settings/SettingsPreferenceFragment$5$1;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/SettingsPreferenceFragment$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/SettingsPreferenceFragment$5;


# direct methods
.method constructor <init>(Lcom/meizu/settings/SettingsPreferenceFragment$5;)V
    .registers 2

    .line 405
    iput-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5$1;->this$1:Lcom/meizu/settings/SettingsPreferenceFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 408
    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5$1;->this$1:Lcom/meizu/settings/SettingsPreferenceFragment$5;

    iget v1, v0, Lcom/meizu/settings/SettingsPreferenceFragment$5;->val$position:I

    iget-object v0, v0, Lcom/meizu/settings/SettingsPreferenceFragment$5;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr v1, v0

    if-ltz v1, :cond_49

    .line 409
    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5$1;->this$1:Lcom/meizu/settings/SettingsPreferenceFragment$5;

    iget-object v0, v0, Lcom/meizu/settings/SettingsPreferenceFragment$5;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_49

    .line 410
    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5$1;->this$1:Lcom/meizu/settings/SettingsPreferenceFragment$5;

    iget-object v0, v0, Lcom/meizu/settings/SettingsPreferenceFragment$5;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 412
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 413
    iget-object v3, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5$1;->this$1:Lcom/meizu/settings/SettingsPreferenceFragment$5;

    iget-object v3, v3, Lcom/meizu/settings/SettingsPreferenceFragment$5;->val$highlight:Landroid/graphics/drawable/Drawable;

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 414
    iget-object v1, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5$1;->this$1:Lcom/meizu/settings/SettingsPreferenceFragment$5;

    iget-object v1, v1, Lcom/meizu/settings/SettingsPreferenceFragment$5;->val$highlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    .line 415
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 416
    new-instance v1, Lcom/meizu/settings/SettingsPreferenceFragment$5$1$1;

    invoke-direct {v1, p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment$5$1$1;-><init>(Lcom/meizu/settings/SettingsPreferenceFragment$5$1;Landroid/view/View;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_49
    return-void
.end method
