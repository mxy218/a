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
    .registers 3

    .line 936
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 937
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 929
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 930
    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 938
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 8

    .line 977
    const-string/jumbo p1, "show_ime_with_hard_keyboard"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 979
    const-string v0, "accessibility_soft_keyboard_mode"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 981
    const-string v1, "high_touch_sensitivity_enable"

    invoke-static {v1}, Llineageos/providers/LineageSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 983
    const-string v2, "feature_touch_hovering"

    invoke-static {v2}, Llineageos/providers/LineageSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 985
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 986
    :try_start_1e
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 987
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateKeyboardFromSettingsLocked()V

    goto/16 :goto_a6

    .line 988
    :cond_2b
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_74

    .line 989
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 990
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "accessibility_soft_keyboard_mode"

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    .line 989
    invoke-static {p1, p2, v4, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 992
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    and-int/lit8 p1, p1, 0x3

    if-ne p1, v0, :cond_4b

    move p1, v0

    goto :goto_4c

    :cond_4b
    move p1, v4

    :goto_4c
    invoke-static {p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$202(Lcom/android/server/inputmethod/InputMethodManagerService;Z)Z

    .line 995
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$200(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_66

    .line 996
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-boolean p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    .line 997
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0, v4, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 998
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-boolean p1, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    goto :goto_72

    .line 999
    :cond_66
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-boolean p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    if-eqz p1, :cond_72

    .line 1000
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p1, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto :goto_73

    .line 999
    :cond_72
    :goto_72
    nop

    .line 1002
    :goto_73
    goto :goto_a6

    :cond_74
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 1003
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$300(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    goto :goto_a6

    .line 1004
    :cond_80
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8c

    .line 1005
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$400(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    goto :goto_a6

    .line 1007
    :cond_8c
    nop

    .line 1008
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object p1

    .line 1009
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a0

    .line 1010
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 1011
    goto :goto_a1

    .line 1009
    :cond_a0
    move v0, v4

    .line 1013
    :goto_a1
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 1015
    :goto_a6
    monitor-exit v3

    .line 1016
    return-void

    .line 1015
    :catchall_a8
    move-exception p1

    monitor-exit v3
    :try_end_aa
    .catchall {:try_start_1e .. :try_end_aa} :catchall_a8

    throw p1
.end method

.method public registerContentObserverLocked(I)V
    .registers 6

    .line 941
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    if-ne v0, p1, :cond_9

    .line 942
    return-void

    .line 944
    :cond_9
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 945
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 946
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 947
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 949
    :cond_23
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    if-eq v1, p1, :cond_2d

    .line 950
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 951
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    .line 953
    :cond_2d
    const-string v1, "default_input_method"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 955
    const-string v1, "enabled_input_methods"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 957
    const-string/jumbo v1, "selected_input_method_subtype"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 959
    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 961
    const-string v1, "accessibility_soft_keyboard_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 963
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$100(Lcom/android/server/inputmethod/InputMethodManagerService;)Llineageos/hardware/LineageHardwareManager;

    move-result-object v1

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Llineageos/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 965
    const-string v1, "high_touch_sensitivity_enable"

    invoke-static {v1}, Llineageos/providers/LineageSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 969
    :cond_73
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$100(Lcom/android/server/inputmethod/InputMethodManagerService;)Llineageos/hardware/LineageHardwareManager;

    move-result-object v1

    const/16 v3, 0x800

    invoke-virtual {v1, v3}, Llineageos/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 970
    const-string v1, "feature_touch_hovering"

    invoke-static {v1}, Llineageos/providers/LineageSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 973
    :cond_8a
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 974
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1020
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
