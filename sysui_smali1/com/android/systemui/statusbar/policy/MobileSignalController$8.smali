.class synthetic Lcom/android/systemui/statusbar/policy/MobileSignalController$8;
.super Ljava/lang/Object;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$flyme$systemui$statusbar$ext$FlymeStatusBarPlugin$RoamingIconShowType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1023
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$RoamingIconShowType;->values()[Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$RoamingIconShowType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$8;->$SwitchMap$com$flyme$systemui$statusbar$ext$FlymeStatusBarPlugin$RoamingIconShowType:[I

    :try_start_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$8;->$SwitchMap$com$flyme$systemui$statusbar$ext$FlymeStatusBarPlugin$RoamingIconShowType:[I

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$RoamingIconShowType;->NO_SHOW:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$RoamingIconShowType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$8;->$SwitchMap$com$flyme$systemui$statusbar$ext$FlymeStatusBarPlugin$RoamingIconShowType:[I

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$RoamingIconShowType;->SHOW_IN_DATA:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$RoamingIconShowType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
