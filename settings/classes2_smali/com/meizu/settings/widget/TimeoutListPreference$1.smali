.class Lcom/meizu/settings/widget/TimeoutListPreference$1;
.super Ljava/lang/Object;
.source "TimeoutListPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/widget/TimeoutListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/TimeoutListPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/TimeoutListPreference;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/meizu/settings/widget/TimeoutListPreference$1;->this$0:Lcom/meizu/settings/widget/TimeoutListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 56
    iget-object p1, p0, Lcom/meizu/settings/widget/TimeoutListPreference$1;->this$0:Lcom/meizu/settings/widget/TimeoutListPreference;

    .line 57
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/widget/TimeoutListPreference$1;->this$0:Lcom/meizu/settings/widget/TimeoutListPreference;

    invoke-static {p0}, Lcom/meizu/settings/widget/TimeoutListPreference;->access$000(Lcom/meizu/settings/widget/TimeoutListPreference;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 56
    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method
