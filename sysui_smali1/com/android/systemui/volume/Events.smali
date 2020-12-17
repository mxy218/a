.class public Lcom/android/systemui/volume/Events;
.super Ljava/lang/Object;
.source "Events.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/Events$Callback;
    }
.end annotation


# static fields
.field public static final DISMISS_REASONS:[Ljava/lang/String;

.field private static final EVENT_TAGS:[Ljava/lang/String;

.field public static final SHOW_REASONS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static sCallback:Lcom/android/systemui/volume/Events$Callback;


# direct methods
.method static constructor <clinit>()V
    .registers 24

    .line 35
    const-class v0, Lcom/android/systemui/volume/Events;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Events;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "show_dialog"

    const-string v2, "dismiss_dialog"

    const-string v3, "active_stream_changed"

    const-string v4, "expand"

    const-string v5, "key"

    const-string v6, "collection_started"

    const-string v7, "collection_stopped"

    const-string v8, "icon_click"

    const-string/jumbo v9, "settings_click"

    const-string/jumbo v10, "touch_level_changed"

    const-string v11, "level_changed"

    const-string v12, "internal_ringer_mode_changed"

    const-string v13, "external_ringer_mode_changed"

    const-string/jumbo v14, "zen_mode_changed"

    const-string/jumbo v15, "suppressor_changed"

    const-string v16, "mute_changed"

    const-string/jumbo v17, "touch_level_done"

    const-string/jumbo v18, "zen_mode_config_changed"

    const-string v19, "ringer_toggle"

    const-string/jumbo v20, "show_usb_overheat_alarm"

    const-string v21, "dismiss_usb_overheat_alarm"

    const-string v22, "odi_captions_click"

    const-string v23, "odi_captions_tooltip_click"

    .line 61
    filled-new-array/range {v1 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Events;->EVENT_TAGS:[Ljava/lang/String;

    const-string/jumbo v1, "unknown"

    const-string/jumbo v2, "touch_outside"

    const-string/jumbo v3, "volume_controller"

    const-string/jumbo v4, "timeout"

    const-string v5, "screen_off"

    const-string/jumbo v6, "settings_clicked"

    const-string v7, "done_clicked"

    const-string v8, "a11y_stream_changed"

    const-string v9, "output_chooser"

    const-string/jumbo v10, "usb_temperature_below_threshold"

    .line 97
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    const-string/jumbo v0, "unknown"

    const-string/jumbo v1, "volume_changed"

    const-string v2, "remote_volume_changed"

    const-string/jumbo v3, "usb_temperature_above_threshold"

    .line 114
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static iconStateToString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1c

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown_state_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    const-string/jumbo p0, "vibrate"

    return-object p0

    :cond_20
    const-string p0, "mute"

    return-object p0

    :cond_23
    const-string/jumbo p0, "unmute"

    return-object p0
.end method

.method private static ringerModeToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const-string/jumbo p0, "unknown"

    return-object p0

    :cond_c
    const-string p0, "normal"

    return-object p0

    :cond_f
    const-string/jumbo p0, "vibrate"

    return-object p0

    :cond_13
    const-string/jumbo p0, "silent"

    return-object p0
.end method

.method public static varargs writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V
    .registers 13

    .line 129
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "writeEvent "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/systemui/volume/Events;->EVENT_TAGS:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1c6

    .line 132
    array-length v4, p2

    if-lez v4, :cond_1c6

    const-string v4, " "

    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5b1

    const/16 v5, 0xcf

    const-string v6, " keyguard="

    const/16 v7, 0x20

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch p1, :pswitch_data_1d8

    .line 210
    :pswitch_2f  #0x5, 0x6, 0x11
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1c6

    .line 203
    :pswitch_38  #0x14
    invoke-static {p0, v4}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 205
    aget-object v0, p2, v8

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v4, "dismiss_usb_overheat_alarm"

    .line 204
    invoke-static {p0, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 206
    sget-object p0, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v0, p2, v9

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p0, p0, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p2, v8

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1c6

    .line 197
    :pswitch_61  #0x13
    invoke-static {p0, v4}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 199
    aget-object v0, p2, v8

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v4, "show_usb_overheat_alarm"

    .line 198
    invoke-static {p0, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 200
    sget-object p0, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    aget-object v0, p2, v9

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p0, p0, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p2, v8

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1c6

    :pswitch_8b  #0x12
    const/16 p0, 0x569

    .line 178
    aget-object v4, p2, v9

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    goto/16 :goto_1c6

    :pswitch_9a  #0x10
    const/16 v0, 0xd1

    .line 162
    aget-object v4, p2, v8

    check-cast v4, Ljava/lang/Integer;

    .line 163
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 162
    invoke-static {p0, v0, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_e6

    .line 194
    :pswitch_a8  #0xe
    aget-object p0, p2, v9

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object p0, p2, v8

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1c6

    .line 191
    :pswitch_b7  #0xd
    aget-object p0, p2, v9

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/volume/Events;->zenModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1c6

    :pswitch_c8  #0xc
    const/16 v0, 0xd5

    .line 184
    aget-object v4, p2, v9

    check-cast v4, Ljava/lang/Integer;

    .line 185
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 184
    invoke-static {p0, v0, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 188
    :pswitch_d5  #0xb
    aget-object p0, p2, v9

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/volume/Events;->ringerModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1c6

    .line 168
    :goto_e6
    :pswitch_e6  #0x9, 0xa, 0xf
    aget-object p0, p2, v9

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object p0, p2, v8

    .line 169
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1c6

    :pswitch_ff  #0x8
    const/16 p0, 0x56a

    .line 181
    invoke-virtual {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    goto/16 :goto_1c6

    :pswitch_106  #0x7
    const/16 v0, 0xd4

    .line 156
    aget-object v4, p2, v9

    check-cast v4, Ljava/lang/Integer;

    .line 157
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 156
    invoke-static {p0, v0, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 158
    aget-object p0, p2, v9

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object p0, p2, v8

    check-cast p0, Ljava/lang/Integer;

    .line 159
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/volume/Events;->iconStateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1c6

    :pswitch_136  #0x4
    const/16 v0, 0xd3

    .line 172
    aget-object v4, p2, v9

    check-cast v4, Ljava/lang/Integer;

    .line 173
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 172
    invoke-static {p0, v0, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 174
    aget-object p0, p2, v9

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object p0, p2, v8

    .line 175
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1c6

    :pswitch_15b  #0x3
    const/16 v0, 0xd0

    .line 142
    aget-object v4, p2, v9

    check-cast v4, Ljava/lang/Boolean;

    .line 143
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 142
    invoke-static {p0, v0, v4}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 144
    aget-object p0, p2, v9

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1c6

    :pswitch_16e  #0x2
    const/16 v0, 0xd2

    .line 151
    aget-object v4, p2, v9

    check-cast v4, Ljava/lang/Integer;

    .line 152
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 151
    invoke-static {p0, v0, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 153
    aget-object p0, p2, v9

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c6

    .line 147
    :pswitch_18b  #0x1
    invoke-static {p0, v5}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 148
    sget-object p0, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v0, p2, v9

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p0, p0, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c6

    .line 136
    :pswitch_19e  #0x0
    invoke-static {p0, v5}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 138
    aget-object v0, p2, v8

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v4, "volume_from_keyguard"

    .line 137
    invoke-static {p0, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 139
    sget-object p0, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    aget-object v0, p2, v9

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p0, p0, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p2, v8

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    :cond_1c6
    :goto_1c6
    sget-object p0, Lcom/android/systemui/volume/Events;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object p0, Lcom/android/systemui/volume/Events;->sCallback:Lcom/android/systemui/volume/Events$Callback;

    if-eqz p0, :cond_1d6

    .line 216
    invoke-interface {p0, v1, v2, p1, p2}, Lcom/android/systemui/volume/Events$Callback;->writeEvent(JI[Ljava/lang/Object;)V

    :cond_1d6
    return-void

    nop

    :pswitch_data_1d8
    .packed-switch 0x0
        :pswitch_19e  #00000000
        :pswitch_18b  #00000001
        :pswitch_16e  #00000002
        :pswitch_15b  #00000003
        :pswitch_136  #00000004
        :pswitch_2f  #00000005
        :pswitch_2f  #00000006
        :pswitch_106  #00000007
        :pswitch_ff  #00000008
        :pswitch_e6  #00000009
        :pswitch_e6  #0000000a
        :pswitch_d5  #0000000b
        :pswitch_c8  #0000000c
        :pswitch_b7  #0000000d
        :pswitch_a8  #0000000e
        :pswitch_e6  #0000000f
        :pswitch_9a  #00000010
        :pswitch_2f  #00000011
        :pswitch_8b  #00000012
        :pswitch_61  #00000013
        :pswitch_38  #00000014
    .end packed-switch
.end method

.method public static writeState(JLcom/android/systemui/plugins/VolumeDialogController$State;)V
    .registers 4

    .line 221
    sget-object v0, Lcom/android/systemui/volume/Events;->sCallback:Lcom/android/systemui/volume/Events$Callback;

    if-eqz v0, :cond_7

    .line 222
    invoke-interface {v0, p0, p1, p2}, Lcom/android/systemui/volume/Events$Callback;->writeState(JLcom/android/systemui/plugins/VolumeDialogController$State;)V

    :cond_7
    return-void
.end method

.method private static zenModeToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_18

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    const/4 v0, 0x2

    if-eq p0, v0, :cond_12

    const/4 v0, 0x3

    if-eq p0, v0, :cond_f

    const-string/jumbo p0, "unknown"

    return-object p0

    :cond_f
    const-string p0, "alarms"

    return-object p0

    :cond_12
    const-string p0, "no_interruptions"

    return-object p0

    :cond_15
    const-string p0, "important_interruptions"

    return-object p0

    :cond_18
    const-string p0, "off"

    return-object p0
.end method
