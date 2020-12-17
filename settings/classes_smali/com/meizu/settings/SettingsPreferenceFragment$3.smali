.class Lcom/meizu/settings/SettingsPreferenceFragment$3;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/SettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/SettingsPreferenceFragment;)V
    .registers 2

    .line 210
    iput-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment$3;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .registers 6

    .line 213
    iget-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment$3;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-static {p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->access$000(Lcom/meizu/settings/SettingsPreferenceFragment;)Landroid/view/View;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    const/4 p4, 0x0

    if-eqz p1, :cond_4a

    .line 214
    iget-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment$3;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-static {p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->access$100(Lcom/meizu/settings/SettingsPreferenceFragment;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4a

    .line 215
    iget-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment$3;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/meizu/settings/utils/MzUtils;->setActionbarDividerVisiable(Landroid/content/Context;Z)V

    .line 216
    iget-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment$3;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-static {p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->access$200(Lcom/meizu/settings/SettingsPreferenceFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 217
    iget-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment$3;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-static {p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->access$300(Lcom/meizu/settings/SettingsPreferenceFragment;)Lflyme/support/v7/app/ActionBar;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/settings/SettingsPreferenceFragment$3;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-static {p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->access$200(Lcom/meizu/settings/SettingsPreferenceFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lflyme/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    :cond_38
    iget-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment$3;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-static {p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->access$400(Lcom/meizu/settings/SettingsPreferenceFragment;)Z

    move-result p1

    if-eqz p1, :cond_78

    .line 220
    iget-object p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment$3;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-static {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->access$300(Lcom/meizu/settings/SettingsPreferenceFragment;)Lflyme/support/v7/app/ActionBar;

    move-result-object p0

    invoke-virtual {p0, p4}, Lflyme/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_78

    :cond_4a
    if-nez p3, :cond_5e

    .line 223
    iget-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment$3;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-static {p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->access$100(Lcom/meizu/settings/SettingsPreferenceFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5e

    .line 224
    iget-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment$3;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/meizu/settings/utils/MzUtils;->setActionbarDividerVisiable(Landroid/content/Context;Z)V

    goto :goto_67

    .line 226
    :cond_5e
    iget-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment$3;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/meizu/settings/utils/MzUtils;->setActionbarDividerVisiable(Landroid/content/Context;Z)V

    .line 228
    :goto_67
    iget-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment$3;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-static {p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->access$400(Lcom/meizu/settings/SettingsPreferenceFragment;)Z

    move-result p1

    if-eqz p1, :cond_78

    .line 229
    iget-object p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment$3;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-static {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->access$300(Lcom/meizu/settings/SettingsPreferenceFragment;)Lflyme/support/v7/app/ActionBar;

    move-result-object p0

    invoke-virtual {p0, p2}, Lflyme/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_78
    :goto_78
    return-void
.end method
