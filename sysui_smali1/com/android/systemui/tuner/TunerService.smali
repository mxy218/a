.class public abstract Lcom/android/systemui/tuner/TunerService;
.super Ljava/lang/Object;
.source "TunerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunerService$ClearReceiver;,
        Lcom/android/systemui/tuner/TunerService$Tunable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isTunerEnabled(Landroid/content/Context;)Z
    .registers 4

    .line 72
    invoke-static {p0}, Lcom/android/systemui/tuner/TunerService;->userContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/systemui/tuner/TunerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public static parseIntegerSwitch(Ljava/lang/String;Z)Z
    .registers 2

    if-eqz p0, :cond_c

    .line 113
    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_c

    if-eqz p0, :cond_a

    const/4 p1, 0x1

    goto :goto_c

    :cond_a
    const/4 p1, 0x0

    nop

    :catch_c
    :cond_c
    :goto_c
    return p1
.end method

.method public static final setTunerEnabled(Landroid/content/Context;Z)V
    .registers 5

    .line 64
    invoke-static {p0}, Lcom/android/systemui/tuner/TunerService;->userContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/systemui/tuner/TunerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p0, 0x1

    if-eqz p1, :cond_14

    move p1, p0

    goto :goto_15

    :cond_14
    const/4 p1, 0x2

    :goto_15
    invoke-virtual {v0, v1, p1, p0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public static final showResetRequest(Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 6

    .line 87
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 89
    sget v1, Lcom/android/systemui/R$string;->remove_from_settings_prompt:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 90
    sget v1, Lcom/android/systemui/R$string;->cancel:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 92
    sget v1, Lcom/android/systemui/R$string;->guest_exit_guest_dialog_remove:I

    .line 93
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/tuner/TunerService$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/tuner/TunerService$1;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    const/4 p0, -0x1

    .line 92
    invoke-virtual {v0, p0, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 108
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static userContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 5

    .line 56
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/os/UserHandle;

    .line 57
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 56
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_12} :catch_12

    :catch_12
    return-object p0
.end method


# virtual methods
.method public varargs abstract addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V
.end method

.method public abstract clearAll()V
.end method

.method public abstract getValue(Ljava/lang/String;I)I
.end method

.method public abstract getValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V
.end method

.method public abstract setValue(Ljava/lang/String;I)V
.end method

.method public abstract setValue(Ljava/lang/String;Ljava/lang/String;)V
.end method
