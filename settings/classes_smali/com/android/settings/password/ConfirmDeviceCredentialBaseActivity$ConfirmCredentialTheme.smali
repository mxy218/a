.class final enum Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;
.super Ljava/lang/Enum;
.source "ConfirmDeviceCredentialBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ConfirmCredentialTheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

.field public static final enum DARK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

.field public static final enum NORMAL:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

.field public static final enum WORK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 43
    new-instance v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->NORMAL:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    .line 44
    new-instance v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    const/4 v2, 0x1

    const-string v3, "DARK"

    invoke-direct {v0, v3, v2}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->DARK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    .line 45
    new-instance v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    const/4 v3, 0x2

    const-string v4, "WORK"

    invoke-direct {v0, v4, v3}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->WORK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    .line 42
    sget-object v4, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->NORMAL:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->DARK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->WORK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->$VALUES:[Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;
    .registers 2

    .line 42
    const-class v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;
    .registers 1

    .line 42
    sget-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->$VALUES:[Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    invoke-virtual {v0}, [Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    return-object v0
.end method
