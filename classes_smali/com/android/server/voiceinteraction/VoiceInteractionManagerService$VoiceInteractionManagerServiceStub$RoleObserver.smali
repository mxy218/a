.class Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;
.super Ljava/lang/Object;
.source "VoiceInteractionManagerService.java"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RoleObserver"
.end annotation


# instance fields
.field private mPm:Landroid/content/pm/PackageManager;

.field private mRm:Landroid/app/role/RoleManager;

.field final synthetic this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 1305
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1302
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->mPm:Landroid/content/pm/PackageManager;

    .line 1303
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    .line 1306
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, p0, v0}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 1308
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    const-string p2, "android.app.role.ASSISTANT"

    invoke-virtual {p1, p2}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 1309
    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 1310
    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result p1

    .line 1309
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 1311
    invoke-virtual {p0, p2, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1313
    :cond_45
    return-void
.end method

.method private getDefaultRecognizer(Landroid/os/UserHandle;)Ljava/lang/String;
    .registers 5

    .line 1316
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.RecognitionService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 1316
    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 1320
    if-eqz p1, :cond_2c

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_1a

    goto :goto_2c

    .line 1325
    :cond_1a
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    .line 1325
    return-object p1

    .line 1321
    :cond_2c
    :goto_2c
    const-string p1, "VoiceInteractionManagerService"

    const-string v0, "Unable to resolve default voice recognition service."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 12

    .line 1338
    const-string v0, "android.app.role.ASSISTANT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1339
    return-void

    .line 1342
    :cond_9
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 1344
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1345
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string/jumbo v2, "voice_recognition_service"

    const-string/jumbo v3, "voice_interaction_service"

    const-string v4, ""

    const-string v5, "assistant"

    if-eqz v1, :cond_56

    .line 1346
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v5, v4, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1348
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v4, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1350
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1351
    invoke-direct {p0, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->getDefaultRecognizer(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object p2

    .line 1350
    invoke-static {p1, v2, p2, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_133

    .line 1355
    :cond_56
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1358
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->mPm:Landroid/content/pm/PackageManager;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.service.voice.VoiceInteractionService"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const v7, 0xc0080

    .line 1358
    invoke-virtual {v1, v6, v7, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 1364
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_75
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1365
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1367
    new-instance v7, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {v7, v8, v6}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 1369
    invoke-virtual {v7}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v8

    if-nez v8, :cond_91

    .line 1370
    goto :goto_75

    .line 1373
    :cond_91
    invoke-virtual {v6}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    .line 1374
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    .line 1376
    new-instance v1, Landroid/content/ComponentName;

    .line 1377
    invoke-virtual {v7}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    .line 1380
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v5, p2, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1382
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, p2, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1385
    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object p2, p2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-virtual {p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v2, p1, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1389
    return-void

    .line 1393
    :cond_d4
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->mPm:Landroid/content/pm/PackageManager;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.ASSIST"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v6, 0xd0000

    .line 1393
    invoke-virtual {v1, p1, v6, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 1399
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_133

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 1400
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1402
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1404
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    .line 1402
    invoke-static {v1, v5, p1, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1405
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v4, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1407
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1409
    invoke-direct {p0, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->getDefaultRecognizer(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object p2

    .line 1407
    invoke-static {p1, v2, p2, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1410
    return-void

    .line 1413
    :cond_133
    :goto_133
    return-void
.end method
