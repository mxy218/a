.class Lcom/meizu/settings/account/FlymeAccountSettings$2;
.super Ljava/lang/Object;
.source "FlymeAccountSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/account/FlymeAccountSettings;->initAddAccountButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/account/FlymeAccountSettings;

.field final synthetic val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;


# direct methods
.method constructor <init>(Lcom/meizu/settings/account/FlymeAccountSettings;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .registers 3

    .line 183
    iput-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings$2;->this$0:Lcom/meizu/settings/account/FlymeAccountSettings;

    iput-object p2, p0, Lcom/meizu/settings/account/FlymeAccountSettings$2;->val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 186
    iget-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings$2;->val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz p1, :cond_10

    .line 187
    iget-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings$2;->this$0:Lcom/meizu/settings/account/FlymeAccountSettings;

    invoke-static {p1}, Lcom/meizu/settings/account/FlymeAccountSettings;->access$000(Lcom/meizu/settings/account/FlymeAccountSettings;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAccountSettings$2;->val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1f

    .line 189
    :cond_10
    iget-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings$2;->this$0:Lcom/meizu/settings/account/FlymeAccountSettings;

    invoke-static {p1}, Lcom/meizu/settings/account/FlymeAccountSettings;->access$400(Lcom/meizu/settings/account/FlymeAccountSettings;)Lcom/android/settings/accounts/AccountPreferenceController;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAccountSettings$2;->this$0:Lcom/meizu/settings/account/FlymeAccountSettings;

    invoke-static {p0}, Lcom/meizu/settings/account/FlymeAccountSettings;->access$300(Lcom/meizu/settings/account/FlymeAccountSettings;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/accounts/AccountPreferenceController;->onPreferenceClick(Landroidx/preference/Preference;)Z

    :goto_1f
    return-void
.end method
