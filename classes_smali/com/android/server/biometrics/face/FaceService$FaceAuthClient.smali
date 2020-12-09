.class final Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;
.super Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FaceAuthClient"
.end annotation


# instance fields
.field private mLastAcquire:I

.field final synthetic this$0:Lcom/android/server/biometrics/face/FaceService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/face/FaceService;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V
    .registers 16

    .line 210
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 211
    invoke-direct/range {p0 .. p15}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V

    .line 213
    return-void
.end method


# virtual methods
.method public getAcquireIgnorelist()[I
    .registers 2

    .line 266
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 267
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$400(Lcom/android/server/biometrics/face/FaceService;)[I

    move-result-object v0

    return-object v0

    .line 270
    :cond_d
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$500(Lcom/android/server/biometrics/face/FaceService;)[I

    move-result-object v0

    return-object v0
.end method

.method public getAcquireVendorIgnorelist()[I
    .registers 2

    .line 276
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 277
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$600(Lcom/android/server/biometrics/face/FaceService;)[I

    move-result-object v0

    return-object v0

    .line 280
    :cond_d
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$700(Lcom/android/server/biometrics/face/FaceService;)[I

    move-result-object v0

    return-object v0
.end method

.method public onAcquired(II)Z
    .registers 12

    .line 287
    iput p1, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->mLastAcquire:I

    .line 289
    const/16 v0, 0xd

    if-ne p1, v0, :cond_9e

    .line 290
    nop

    .line 291
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104027d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    nop

    .line 293
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104027e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 294
    nop

    .line 295
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104027c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 297
    new-instance v5, Landroid/content/Intent;

    const-string v3, "android.settings.FACE_SETTINGS"

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    const-string v3, "com.android.settings"

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 306
    new-instance v4, Landroid/app/NotificationChannel;

    const/4 v5, 0x4

    const-string v6, "FaceEnrollNotificationChannel"

    invoke-direct {v4, v6, v0, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 308
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v6, 0x10803b0

    .line 309
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 310
    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 311
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 312
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 313
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 314
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 316
    const-string/jumbo v2, "sys"

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 317
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v2, -0x1

    .line 318
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 321
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$800(Lcom/android/server/biometrics/face/FaceService;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 322
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$800(Lcom/android/server/biometrics/face/FaceService;)Landroid/app/NotificationManager;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v4, "FaceService"

    invoke-virtual {v2, v4, v1, v0, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 326
    :cond_9e
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->onAcquired(II)Z

    move-result p1

    return p1
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 234
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z

    move-result p1

    .line 236
    iget-object p3, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p3}, Lcom/android/server/biometrics/face/FaceService;->access$300(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/face/FaceService$UsageStats;

    move-result-object p3

    new-instance v8, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;

    .line 237
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getStartTimeMs()J

    move-result-wide v1

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getStartTimeMs()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;-><init>(JJZII)V

    .line 236
    invoke-virtual {p3, v8}, Lcom/android/server/biometrics/face/FaceService$UsageStats;->addEvent(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)V

    .line 249
    if-nez p1, :cond_2a

    if-nez p2, :cond_28

    goto :goto_2a

    :cond_28
    const/4 p1, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 p1, 0x1

    :goto_2b
    return p1
.end method

.method public onError(JII)Z
    .registers 15

    .line 254
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$300(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/face/FaceService$UsageStats;

    move-result-object v0

    new-instance v9, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;

    .line 255
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getStartTimeMs()J

    move-result-wide v2

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getStartTimeMs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const/4 v6, 0x0

    move-object v1, v9

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;-><init>(JJZII)V

    .line 254
    invoke-virtual {v0, v9}, Lcom/android/server/biometrics/face/FaceService$UsageStats;->addEvent(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)V

    .line 261
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->onError(JII)Z

    move-result p1

    return p1
.end method

.method public shouldFrameworkHandleLockout()Z
    .registers 2

    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method protected statsModality()I
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->statsModality()I

    move-result v0

    return v0
.end method

.method public wasUserDetected()Z
    .registers 3

    .line 227
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->mLastAcquire:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_c

    const/16 v1, 0x15

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
