.class synthetic Lcom/meizu/common/widget/RoundCornerRecordView$1;
.super Ljava/lang/Object;
.source "RoundCornerRecordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/RoundCornerRecordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$meizu$common$widget$RoundCornerRecordView$BorderType:[I

.field static final synthetic $SwitchMap$com$meizu$common$widget$RoundCornerRecordView$IconType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 414
    invoke-static {}, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->values()[Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$IconType:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$IconType:[I

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_CALLOUT:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$IconType:[I

    sget-object v3, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_CALLIN:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$IconType:[I

    sget-object v4, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_MISSED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    const/4 v3, 0x4

    :try_start_2b
    sget-object v4, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$IconType:[I

    sget-object v5, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_REFUSED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_35

    :catch_35
    const/4 v4, 0x5

    :try_start_36
    sget-object v5, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$IconType:[I

    sget-object v6, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RINGONCE:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_40} :catch_40

    :catch_40
    :try_start_40
    sget-object v5, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$IconType:[I

    sget-object v6, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RECORD:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4b
    sget-object v5, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$IconType:[I

    sget-object v6, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RECORD_FAIL:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_56

    :catch_56
    :try_start_56
    sget-object v5, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$IconType:[I

    sget-object v6, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_VOICEMAIL:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x8

    aput v7, v5, v6
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_62

    .line 345
    :catch_62
    invoke-static {}, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->values()[Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$BorderType:[I

    :try_start_6b
    sget-object v5, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$BorderType:[I

    sget-object v6, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_SMALL_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_75} :catch_75

    :catch_75
    :try_start_75
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$BorderType:[I

    sget-object v5, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_LIST_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7f} :catch_7f

    :catch_7f
    :try_start_7f
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$BorderType:[I

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_SMS_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_89} :catch_89

    :catch_89
    :try_start_89
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$BorderType:[I

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_EDIT_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_93} :catch_93

    :catch_93
    :try_start_93
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$BorderType:[I

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_VIEW_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9d} :catch_9d

    :catch_9d
    return-void
.end method
