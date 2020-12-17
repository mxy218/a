.class Lcom/meizu/settings/language/FlymeInputMethodPreference$4;
.super Ljava/lang/Object;
.source "FlymeInputMethodPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/language/FlymeInputMethodPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/language/FlymeInputMethodPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/language/FlymeInputMethodPreference;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference$4;->this$0:Lcom/meizu/settings/language/FlymeInputMethodPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 178
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference$4;->this$0:Lcom/meizu/settings/language/FlymeInputMethodPreference;

    .line 179
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference$4;->this$0:Lcom/meizu/settings/language/FlymeInputMethodPreference;

    .line 180
    invoke-static {v0}, Lcom/meizu/settings/language/FlymeInputMethodPreference;->access$300(Lcom/meizu/settings/language/FlymeInputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 179
    invoke-static {p1, v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfInputMethodDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    .line 181
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference$4;->this$0:Lcom/meizu/settings/language/FlymeInputMethodPreference;

    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method
