.class Lcom/meizu/settings/SettingsPreferenceFragment$5$1$1;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/SettingsPreferenceFragment$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/meizu/settings/SettingsPreferenceFragment$5$1;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/meizu/settings/SettingsPreferenceFragment$5$1;Landroid/view/View;)V
    .registers 3

    .line 416
    iput-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5$1$1;->this$2:Lcom/meizu/settings/SettingsPreferenceFragment$5$1;

    iput-object p2, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5$1$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 419
    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5$1$1;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 420
    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5$1$1;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 421
    iget-object p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5$1$1;->this$2:Lcom/meizu/settings/SettingsPreferenceFragment$5$1;

    iget-object p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5$1;->this$1:Lcom/meizu/settings/SettingsPreferenceFragment$5;

    iget-object p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment$5;->val$adapter:Landroid/widget/ListAdapter;

    check-cast p0, Landroid/preference/PreferenceGroupAdapter;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroupAdapter;->setHighlighted(I)V

    return-void
.end method
