.class synthetic Lcom/android/keyguard/CarrierTextController$5;
.super Ljava/lang/Object;
.source "CarrierTextController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

.field static final synthetic $SwitchMap$com$android$keyguard$CarrierTextController$StatusMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 588
    invoke-static {}, Lcom/android/internal/telephony/IccCardConstants$State;->values()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/keyguard/CarrierTextController$5;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/android/keyguard/CarrierTextController$5;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/android/keyguard/CarrierTextController$5;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lcom/android/keyguard/CarrierTextController$5;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    const/4 v3, 0x4

    :try_start_2b
    sget-object v4, Lcom/android/keyguard/CarrierTextController$5;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_35

    :catch_35
    const/4 v4, 0x5

    :try_start_36
    sget-object v5, Lcom/android/keyguard/CarrierTextController$5;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v6}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_40} :catch_40

    :catch_40
    const/4 v5, 0x6

    :try_start_41
    sget-object v6, Lcom/android/keyguard/CarrierTextController$5;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_4b} :catch_4b

    :catch_4b
    const/4 v6, 0x7

    :try_start_4c
    sget-object v7, Lcom/android/keyguard/CarrierTextController$5;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_56} :catch_56

    :catch_56
    const/16 v7, 0x8

    :try_start_58
    sget-object v8, Lcom/android/keyguard/CarrierTextController$5;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v9, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v9}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_62} :catch_62

    :catch_62
    const/16 v8, 0x9

    :try_start_64
    sget-object v9, Lcom/android/keyguard/CarrierTextController$5;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v10, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6e} :catch_6e

    .line 487
    :catch_6e
    invoke-static {}, Lcom/android/keyguard/CarrierTextController$StatusMode;->values()[Lcom/android/keyguard/CarrierTextController$StatusMode;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/android/keyguard/CarrierTextController$5;->$SwitchMap$com$android$keyguard$CarrierTextController$StatusMode:[I

    :try_start_77
    sget-object v9, Lcom/android/keyguard/CarrierTextController$5;->$SwitchMap$com$android$keyguard$CarrierTextController$StatusMode:[I

    sget-object v10, Lcom/android/keyguard/CarrierTextController$StatusMode;->Normal:Lcom/android/keyguard/CarrierTextController$StatusMode;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_81} :catch_81

    :catch_81
    :try_start_81
    sget-object v0, Lcom/android/keyguard/CarrierTextController$5;->$SwitchMap$com$android$keyguard$CarrierTextController$StatusMode:[I

    sget-object v9, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierTextController$StatusMode;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v1, v0, v9
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8b} :catch_8b

    :catch_8b
    :try_start_8b
    sget-object v0, Lcom/android/keyguard/CarrierTextController$5;->$SwitchMap$com$android$keyguard$CarrierTextController$StatusMode:[I

    sget-object v1, Lcom/android/keyguard/CarrierTextController$StatusMode;->NetworkLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_95} :catch_95

    :catch_95
    :try_start_95
    sget-object v0, Lcom/android/keyguard/CarrierTextController$5;->$SwitchMap$com$android$keyguard$CarrierTextController$StatusMode:[I

    sget-object v1, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierTextController$StatusMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_9f} :catch_9f

    :catch_9f
    :try_start_9f
    sget-object v0, Lcom/android/keyguard/CarrierTextController$5;->$SwitchMap$com$android$keyguard$CarrierTextController$StatusMode:[I

    sget-object v1, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierTextController$StatusMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_a9} :catch_a9

    :catch_a9
    :try_start_a9
    sget-object v0, Lcom/android/keyguard/CarrierTextController$5;->$SwitchMap$com$android$keyguard$CarrierTextController$StatusMode:[I

    sget-object v1, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a9 .. :try_end_b3} :catch_b3

    :catch_b3
    :try_start_b3
    sget-object v0, Lcom/android/keyguard/CarrierTextController$5;->$SwitchMap$com$android$keyguard$CarrierTextController$StatusMode:[I

    sget-object v1, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_bd} :catch_bd

    :catch_bd
    :try_start_bd
    sget-object v0, Lcom/android/keyguard/CarrierTextController$5;->$SwitchMap$com$android$keyguard$CarrierTextController$StatusMode:[I

    sget-object v1, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bd .. :try_end_c7} :catch_c7

    :catch_c7
    :try_start_c7
    sget-object v0, Lcom/android/keyguard/CarrierTextController$5;->$SwitchMap$com$android$keyguard$CarrierTextController$StatusMode:[I

    sget-object v1, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierTextController$StatusMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c7 .. :try_end_d1} :catch_d1

    :catch_d1
    :try_start_d1
    sget-object v0, Lcom/android/keyguard/CarrierTextController$5;->$SwitchMap$com$android$keyguard$CarrierTextController$StatusMode:[I

    sget-object v1, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierTextController$StatusMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d1 .. :try_end_dd} :catch_dd

    :catch_dd
    return-void
.end method
