.class public final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "RingerModeDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method protected constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    .line 1148
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canVolumeDownEnterSilent()Z
    .registers 2

    .line 1243
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public getRingerModeAffectedStreams(I)I
    .registers 5

    .line 1250
    or-int/lit8 p1, p1, 0x26

    .line 1254
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 1256
    or-int/lit8 p1, p1, 0x18

    goto :goto_e

    .line 1259
    :cond_c
    and-int/lit8 p1, p1, -0x19

    .line 1263
    :goto_e
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_22

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v0, v0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 1264
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1267
    and-int/lit8 p1, p1, -0x3

    goto :goto_23

    .line 1269
    :cond_22
    or-int/2addr p1, v1

    .line 1271
    :goto_23
    return p1
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 16

    .line 1207
    nop

    .line 1208
    const/4 p5, 0x0

    const/4 v0, 0x1

    if-eq p1, p2, :cond_7

    move v1, v0

    goto :goto_8

    :cond_7
    move v1, p5

    .line 1209
    :goto_8
    if-ne p4, v0, :cond_c

    move v2, v0

    goto :goto_d

    :cond_c
    move v2, p5

    .line 1211
    :goto_d
    nop

    .line 1212
    const/4 v3, -0x1

    if-eqz p2, :cond_23

    if-eq p2, v0, :cond_17

    const/4 v0, 0x2

    if-eq p2, v0, :cond_17

    goto :goto_20

    .line 1226
    :cond_17
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v0, :cond_20

    .line 1227
    move v5, p5

    move p5, p2

    goto :goto_38

    .line 1231
    :cond_20
    :goto_20
    move p5, p2

    move v5, v3

    goto :goto_38

    .line 1214
    :cond_23
    if-eqz v1, :cond_35

    .line 1215
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v1, v1, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v1, :cond_2d

    .line 1216
    move v1, v0

    goto :goto_2e

    .line 1215
    :cond_2d
    move v1, v3

    .line 1218
    :goto_2e
    if-eqz v2, :cond_32

    move p5, v0

    goto :goto_33

    .line 1219
    :cond_32
    nop

    :goto_33
    move v5, v1

    goto :goto_38

    .line 1221
    :cond_35
    nop

    .line 1223
    move p5, p4

    move v5, v3

    .line 1231
    :goto_38
    if-eq v5, v3, :cond_45

    .line 1232
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const-string/jumbo v7, "ringerModeExternal"

    move-object v8, p3

    invoke-static/range {v4 .. v9}, Lcom/android/server/notification/ZenModeHelper;->access$600(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1236
    :cond_45
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    .line 1238
    return p5
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 16

    .line 1157
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p2, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    .line 1159
    :goto_7
    nop

    .line 1161
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v3, v3, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v3, v3, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v3, v1, :cond_27

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v3, v3, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 1163
    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 1166
    :cond_1e
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/notification/ZenModeHelper;->access$500(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    .line 1168
    :cond_27
    nop

    .line 1169
    const/4 v3, -0x1

    if-eqz p2, :cond_5d

    const/4 p5, 0x2

    if-eq p2, v1, :cond_31

    if-eq p2, p5, :cond_31

    goto :goto_77

    .line 1180
    :cond_31
    if-eqz v2, :cond_54

    if-nez p1, :cond_54

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v4, v4, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eq v4, p5, :cond_52

    iget-object p5, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p5, p5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v4, 0x3

    if-eq p5, v4, :cond_52

    iget-object p5, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p5, p5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne p5, v1, :cond_54

    iget-object p5, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object p5, p5, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 1184
    invoke-static {p5}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result p5

    if-eqz p5, :cond_54

    .line 1186
    :cond_52
    move p5, p2

    goto :goto_79

    .line 1187
    :cond_54
    iget-object p5, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p5, p5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz p5, :cond_77

    .line 1188
    move p5, v0

    move v0, v3

    goto :goto_79

    .line 1171
    :cond_5d
    if-eqz v2, :cond_77

    iget-boolean p5, p5, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz p5, :cond_77

    .line 1172
    iget-object p5, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p5, p5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez p5, :cond_6b

    .line 1173
    move v0, v1

    goto :goto_6c

    .line 1172
    :cond_6b
    move v0, v3

    .line 1175
    :goto_6c
    iget-object p5, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p5, v1}, Lcom/android/server/notification/ZenModeHelper;->access$500(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    move p5, p2

    goto :goto_79

    .line 1193
    :cond_77
    :goto_77
    move p5, p2

    move v0, v3

    :goto_79
    if-eq v0, v3, :cond_87

    .line 1194
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v7, "ringerModeInternal"

    move v5, v0

    invoke-static/range {v4 .. v9}, Lcom/android/server/notification/ZenModeHelper;->access$600(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1197
    :cond_87
    if-nez v2, :cond_8d

    if-ne v0, v3, :cond_8d

    if-eq p4, p5, :cond_90

    .line 1198
    :cond_8d
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    .line 1201
    :cond_90
    return p5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1151
    const-string v0, "ZenModeHelper"

    return-object v0
.end method
