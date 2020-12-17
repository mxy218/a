.class synthetic Lcom/android/systemui/doze/DozeScreenBrightness$1;
.super Ljava/lang/Object;
.source "DozeScreenBrightness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeScreenBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$systemui$doze$DozeMachine$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 105
    invoke-static {}, Lcom/android/systemui/doze/DozeMachine$State;->values()[Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/doze/DozeScreenBrightness$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    :try_start_9
    sget-object v0, Lcom/android/systemui/doze/DozeScreenBrightness$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/android/systemui/doze/DozeScreenBrightness$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/android/systemui/doze/DozeScreenBrightness$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Lcom/android/systemui/doze/DozeScreenBrightness$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    :try_start_35
    sget-object v0, Lcom/android/systemui/doze/DozeScreenBrightness$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_40

    :catch_40
    return-void
.end method
