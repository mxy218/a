.class synthetic Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$13;
.super Ljava/lang/Object;
.source "MiniHeadsupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$flyme$systemui$miniheadsup$MiniHeadsupWindow$HideState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 576
    invoke-static {}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->values()[Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$13;->$SwitchMap$com$flyme$systemui$miniheadsup$MiniHeadsupWindow$HideState:[I

    :try_start_9
    sget-object v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$13;->$SwitchMap$com$flyme$systemui$miniheadsup$MiniHeadsupWindow$HideState:[I

    sget-object v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Snooze:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$13;->$SwitchMap$com$flyme$systemui$miniheadsup$MiniHeadsupWindow$HideState:[I

    sget-object v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Cancel:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$13;->$SwitchMap$com$flyme$systemui$miniheadsup$MiniHeadsupWindow$HideState:[I

    sget-object v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Click:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method
