.class Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field mLastEnabled:Ljava/lang/String;

.field mRegistered:Z

.field mUserId:I

.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/Handler;)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p2, "handler"  # Landroid/os/Handler;

    .line 956
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 957
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 949
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 950
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 958
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 11
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 987
    const-string/jumbo v0, "show_ime_with_hard_keyboard"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 989
    .local v0, "showImeUri":Landroid/net/Uri;
    const-string v1, "accessibility_soft_keyboard_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 991
    .local v1, "accessibilityRequestingNoImeUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 992
    :try_start_12
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 993
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateKeyboardFromSettingsLocked()V

    goto :goto_80

    .line 994
    :cond_1e
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 995
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 996
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_soft_keyboard_mode"

    iget v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    .line 995
    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 998
    .local v3, "accessibilitySoftKeyboardSetting":I
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    and-int/lit8 v5, v3, 0x3

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3e

    move v5, v7

    goto :goto_3f

    :cond_3e
    move v5, v6

    :goto_3f
    invoke-static {v4, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$102(Lcom/android/server/inputmethod/InputMethodManagerService;Z)Z

    .line 1001
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$100(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_59

    .line 1002
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-boolean v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    .line 1003
    .local v4, "showRequested":Z
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v7, v6, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 1004
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-boolean v4, v5, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    .end local v4  # "showRequested":Z
    goto :goto_65

    .line 1005
    :cond_59
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-boolean v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    if-eqz v4, :cond_65

    .line 1006
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v4, v7, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto :goto_66

    .line 1005
    :cond_65
    :goto_65
    nop

    .line 1008
    .end local v3  # "accessibilitySoftKeyboardSetting":I
    :goto_66
    goto :goto_80

    .line 1009
    :cond_67
    const/4 v3, 0x0

    .line 1010
    .local v3, "enabledChanged":Z
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object v4

    .line 1011
    .local v4, "newEnabled":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7b

    .line 1012
    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 1013
    const/4 v3, 0x1

    .line 1015
    :cond_7b
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 1017
    .end local v3  # "enabledChanged":Z
    .end local v4  # "newEnabled":Ljava/lang/String;
    :goto_80
    monitor-exit v2

    .line 1018
    return-void

    .line 1017
    :catchall_82
    move-exception v3

    monitor-exit v2
    :try_end_84
    .catchall {:try_start_12 .. :try_end_84} :catchall_82

    throw v3
.end method

.method public registerContentObserverLocked(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 961
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    if-ne v0, p1, :cond_9

    .line 962
    return-void

    .line 964
    :cond_9
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 965
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 966
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 967
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 969
    :cond_23
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    if-eq v1, p1, :cond_2d

    .line 970
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 971
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    .line 973
    :cond_2d
    const-string v1, "default_input_method"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 975
    const-string v1, "enabled_input_methods"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 977
    const-string/jumbo v1, "selected_input_method_subtype"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 979
    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 981
    const-string v1, "accessibility_soft_keyboard_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 983
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 984
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsObserver{mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLastEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
