.class Lcom/android/settings/users/UserSettings$5;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;

.field final synthetic val$longMessageDisplayed:Z

.field final synthetic val$preferences:Landroid/content/SharedPreferences;

.field final synthetic val$userType:I


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;IZLandroid/content/SharedPreferences;)V
    .registers 5

    .line 583
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$5;->this$0:Lcom/android/settings/users/UserSettings;

    iput p2, p0, Lcom/android/settings/users/UserSettings$5;->val$userType:I

    iput-boolean p3, p0, Lcom/android/settings/users/UserSettings$5;->val$longMessageDisplayed:Z

    iput-object p4, p0, Lcom/android/settings/users/UserSettings$5;->val$preferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 585
    iget-object p1, p0, Lcom/android/settings/users/UserSettings$5;->this$0:Lcom/android/settings/users/UserSettings;

    iget p2, p0, Lcom/android/settings/users/UserSettings$5;->val$userType:I

    invoke-static {p1, p2}, Lcom/android/settings/users/UserSettings;->access$800(Lcom/android/settings/users/UserSettings;I)V

    .line 586
    iget-boolean p1, p0, Lcom/android/settings/users/UserSettings$5;->val$longMessageDisplayed:Z

    if-nez p1, :cond_1b

    .line 587
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$5;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p1, 0x1

    const-string p2, "key_add_user_long_message_displayed"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 589
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1b
    return-void
.end method
