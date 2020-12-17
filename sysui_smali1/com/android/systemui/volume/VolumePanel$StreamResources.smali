.class final enum Lcom/android/systemui/volume/VolumePanel$StreamResources;
.super Ljava/lang/Enum;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StreamResources"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/volume/VolumePanel$StreamResources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum AccessibilityStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum AlarmStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum BluetoothSCOStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum MasterStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum MediaStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum NotificationStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum RemoteStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum RingerStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum SubStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum SystemStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum VoiceStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;


# instance fields
.field descRes:I

.field iconExtendMuteRes:I

.field iconExtendRes:I

.field iconMuteRes:I

.field iconRes:I

.field seekbarBgRes:I

.field show:Z

.field streamType:I


# direct methods
.method static constructor <clinit>()V
    .registers 23

    .line 255
    new-instance v11, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    sget v6, Lcom/android/systemui/R$drawable;->ic_call_popup_volume_on_horizontal:I

    sget v8, Lcom/android/systemui/R$drawable;->ic_call_popup_volume_on_horizontal_extend:I

    sget v9, Lcom/android/systemui/R$drawable;->volume_seekbar_bg_call:I

    const-string v1, "BluetoothSCOStream"

    const/4 v2, 0x0

    const/4 v3, 0x6

    const v4, 0x1040739

    const/4 v10, 0x0

    move-object v0, v11

    move v5, v6

    move v7, v8

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIIIIZ)V

    sput-object v11, Lcom/android/systemui/volume/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 264
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    sget v17, Lcom/android/systemui/R$drawable;->ic_ring_popup_volume_on_horizontal:I

    sget v18, Lcom/android/systemui/R$drawable;->ic_ring_popup_volume_on_horizontal_mute:I

    sget v19, Lcom/android/systemui/R$drawable;->ic_ring_popup_volume_on_horizontal_extend:I

    sget v20, Lcom/android/systemui/R$drawable;->ic_ring_popup_volume_on_horizontal_extend_mute:I

    sget v21, Lcom/android/systemui/R$drawable;->volume_seekbar_bg_ring:I

    const-string v13, "RingerStream"

    const/4 v14, 0x1

    const/4 v15, 0x2

    const v16, 0x104073d

    const/16 v22, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RingerStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 273
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    sget v7, Lcom/android/systemui/R$drawable;->ic_call_popup_volume_on_horizontal:I

    sget v9, Lcom/android/systemui/R$drawable;->ic_call_popup_volume_on_horizontal_extend:I

    sget v10, Lcom/android/systemui/R$drawable;->volume_seekbar_bg_call:I

    const-string v2, "VoiceStream"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const v5, 0x104073a

    const/4 v11, 0x0

    move-object v1, v0

    move v6, v7

    move v8, v9

    invoke-direct/range {v1 .. v11}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 282
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    sget v17, Lcom/android/systemui/R$drawable;->ic_ring_popup_volume_on_horizontal:I

    sget v18, Lcom/android/systemui/R$drawable;->ic_ring_popup_volume_on_horizontal_mute:I

    sget v19, Lcom/android/systemui/R$drawable;->ic_ring_popup_volume_on_horizontal_extend:I

    sget v20, Lcom/android/systemui/R$drawable;->ic_ring_popup_volume_on_horizontal_extend_mute:I

    sget v21, Lcom/android/systemui/R$drawable;->volume_seekbar_bg_ring:I

    const-string v13, "AlarmStream"

    const/4 v14, 0x3

    const/4 v15, 0x4

    const v16, 0x1040734

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->AlarmStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 291
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    sget v6, Lcom/android/systemui/R$drawable;->ic_music_popup_volume_on_horizontal:I

    sget v7, Lcom/android/systemui/R$drawable;->ic_music_popup_volume_on_horizontal_mute:I

    sget v8, Lcom/android/systemui/R$drawable;->ic_music_popup_volume_on_horizontal_extend:I

    sget v9, Lcom/android/systemui/R$drawable;->ic_music_popup_volume_on_horizontal_extend_mute:I

    sget v10, Lcom/android/systemui/R$drawable;->volume_seekbar_bg_music:I

    const-string v2, "MediaStream"

    const/4 v3, 0x4

    const/4 v4, 0x3

    const v5, 0x104073b

    const/4 v11, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MediaStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 300
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    sget v17, Lcom/android/systemui/R$drawable;->ic_notification_popup_volume_on_horizontal:I

    sget v18, Lcom/android/systemui/R$drawable;->ic_notification_popup_volume_on_horizontal_mute:I

    sget v19, Lcom/android/systemui/R$drawable;->ic_notification_popup_volume_on_horizontal_extend:I

    sget v20, Lcom/android/systemui/R$drawable;->ic_notification_popup_volume_on_horizontal_extend_mute:I

    sget v21, Lcom/android/systemui/R$drawable;->volume_seekbar_bg_notification:I

    const-string v13, "NotificationStream"

    const/4 v14, 0x5

    const/4 v15, 0x5

    const v16, 0x104073c

    const/16 v22, 0x1

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 309
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    sget v9, Lcom/android/systemui/R$drawable;->ic_accessibility_popup_volume_on_horizontal:I

    sget v10, Lcom/android/systemui/R$drawable;->volume_panel_seekbar_drawable_progress:I

    const-string v2, "AccessibilityStream"

    const/4 v3, 0x6

    const/16 v4, 0xa

    const/4 v11, 0x0

    move-object v1, v0

    move v6, v9

    move v7, v9

    move v8, v9

    invoke-direct/range {v1 .. v11}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->AccessibilityStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 318
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    sget v16, Lcom/android/systemui/R$string;->volume_icon_description_system:I

    sget v17, Lcom/android/systemui/R$drawable;->ic_system_popup_volume_on_horizontal:I

    sget v18, Lcom/android/systemui/R$drawable;->ic_system_popup_volume_on_horizontal_mute:I

    sget v19, Lcom/android/systemui/R$drawable;->ic_system_popup_volume_on_horizontal:I

    sget v20, Lcom/android/systemui/R$drawable;->ic_system_popup_volume_on_horizontal_mute:I

    sget v21, Lcom/android/systemui/R$drawable;->volume_panel_seekbar_drawable_progress:I

    const-string v13, "SystemStream"

    const/4 v14, 0x7

    const/4 v15, 0x1

    const/16 v22, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->SystemStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 327
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    sget v6, Lcom/android/systemui/R$drawable;->ic_ring_popup_volume_on_horizontal:I

    sget v7, Lcom/android/systemui/R$drawable;->ic_ring_popup_volume_on_horizontal_mute:I

    sget v8, Lcom/android/systemui/R$drawable;->ic_ring_popup_volume_on_horizontal_extend:I

    sget v9, Lcom/android/systemui/R$drawable;->ic_ring_popup_volume_on_horizontal_extend_mute:I

    sget v10, Lcom/android/systemui/R$drawable;->volume_seekbar_bg_ring:I

    const-string v2, "MasterStream"

    const/16 v3, 0x8

    const/16 v4, -0x64

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MasterStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 336
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    sget v17, Lcom/android/systemui/R$drawable;->ic_music_popup_volume_on_horizontal:I

    sget v18, Lcom/android/systemui/R$drawable;->ic_music_popup_volume_on_horizontal_mute:I

    sget v19, Lcom/android/systemui/R$drawable;->ic_music_popup_volume_on_horizontal_extend:I

    sget v20, Lcom/android/systemui/R$drawable;->ic_music_popup_volume_on_horizontal_extend_mute:I

    sget v21, Lcom/android/systemui/R$drawable;->volume_seekbar_bg_music:I

    const-string v13, "RemoteStream"

    const/16 v14, 0x9

    const/16 v15, -0xc8

    const v16, 0x104073b

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RemoteStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 345
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    sget v6, Lcom/android/systemui/R$drawable;->ic_music_popup_volume_on_horizontal:I

    sget v7, Lcom/android/systemui/R$drawable;->ic_music_popup_volume_on_horizontal_mute:I

    sget v8, Lcom/android/systemui/R$drawable;->ic_music_popup_volume_on_horizontal_extend:I

    sget v9, Lcom/android/systemui/R$drawable;->ic_music_popup_volume_on_horizontal_extend_mute:I

    sget v10, Lcom/android/systemui/R$drawable;->volume_seekbar_bg_music:I

    const-string v2, "SubStream"

    const/16 v3, 0xa

    const/16 v4, -0x12c

    const/4 v11, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->SubStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 253
    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RingerStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->AlarmStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MediaStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->AccessibilityStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->SystemStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MasterStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RemoteStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->SubStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->$VALUES:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIIZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIZ)V"
        }
    .end annotation

    .line 364
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 365
    iput p3, p0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    .line 366
    iput p4, p0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->descRes:I

    .line 367
    iput p5, p0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconRes:I

    .line 368
    iput p6, p0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconMuteRes:I

    .line 369
    iput p7, p0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconExtendRes:I

    .line 370
    iput p8, p0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconExtendMuteRes:I

    .line 371
    iput p9, p0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->seekbarBgRes:I

    .line 372
    iput-boolean p10, p0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->show:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/VolumePanel$StreamResources;
    .registers 2

    .line 253
    const-class v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/volume/VolumePanel$StreamResources;
    .registers 1

    .line 253
    sget-object v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->$VALUES:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    invoke-virtual {v0}, [Lcom/android/systemui/volume/VolumePanel$StreamResources;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/volume/VolumePanel$StreamResources;

    return-object v0
.end method
