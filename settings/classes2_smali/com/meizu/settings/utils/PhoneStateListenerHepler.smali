.class public Lcom/meizu/settings/utils/PhoneStateListenerHepler;
.super Ljava/lang/Object;
.source "PhoneStateListenerHepler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/utils/PhoneStateListenerHepler$PH;,
        Lcom/meizu/settings/utils/PhoneStateListenerHepler$OnCallStateChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneStateListenerHepler"

.field private static mHepler:Lcom/meizu/settings/utils/PhoneStateListenerHepler;


# instance fields
.field private mCallStateChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/utils/PhoneStateListenerHepler$OnCallStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPhoneStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/utils/PhoneStateListenerHepler$PH;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mCallStateChangeListeners:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mPhoneStateListeners:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Lcom/meizu/settings/utils/PhoneStateListenerHepler$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/utils/PhoneStateListenerHepler$1;-><init>(Lcom/meizu/settings/utils/PhoneStateListenerHepler;)V

    iput-object v0, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mContext:Landroid/content/Context;

    .line 43
    iget-object p1, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mContext:Landroid/content/Context;

    const-string v0, "telephony_subscription_service"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 45
    iget-object p1, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 15
    sget-object v0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/settings/utils/PhoneStateListenerHepler;)V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->updatePhoneStateListeners()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/utils/PhoneStateListenerHepler;)Ljava/util/ArrayList;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mCallStateChangeListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/settings/utils/PhoneStateListenerHepler;
    .registers 2

    .line 49
    sget-object v0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mHepler:Lcom/meizu/settings/utils/PhoneStateListenerHepler;

    if-nez v0, :cond_b

    .line 50
    new-instance v0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;

    invoke-direct {v0, p0}, Lcom/meizu/settings/utils/PhoneStateListenerHepler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mHepler:Lcom/meizu/settings/utils/PhoneStateListenerHepler;

    .line 52
    :cond_b
    sget-object p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mHepler:Lcom/meizu/settings/utils/PhoneStateListenerHepler;

    return-object p0
.end method

.method private updatePhoneStateListeners()V
    .registers 6

    .line 56
    iget-object v0, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mPhoneStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/utils/PhoneStateListenerHepler$PH;

    .line 59
    iget-object v3, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_c

    .line 61
    :cond_1f
    iget-object v1, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mPhoneStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-nez v0, :cond_27

    return-void

    .line 65
    :cond_27
    new-instance v0, Lcom/meizu/settings/utils/PhoneStateListenerHepler$PH;

    invoke-direct {v0, p0}, Lcom/meizu/settings/utils/PhoneStateListenerHepler$PH;-><init>(Lcom/meizu/settings/utils/PhoneStateListenerHepler;)V

    .line 66
    iget-object v1, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v2, 0x20

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 67
    iget-object p0, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mPhoneStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addListener(Lcom/meizu/settings/utils/PhoneStateListenerHepler$OnCallStateChangeListener;)V
    .registers 5

    .line 91
    iget-object v0, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mCallStateChangeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p1, :cond_1e

    .line 92
    :try_start_5
    iget-object v1, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mCallStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 94
    sget-object v1, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->TAG:Ljava/lang/String;

    const-string v2, "start updatePhoneStateListeners"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 97
    invoke-direct {p0}, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->updatePhoneStateListeners()V

    .line 99
    :cond_1e
    iget-object v1, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mCallStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 100
    iget-object p0, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mCallStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public isPhoneStateIdle()Z
    .registers 10

    .line 72
    iget-object v0, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4d

    .line 73
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_4d

    :cond_10
    const/4 v2, 0x0

    move v3, v2

    .line 76
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4d

    .line 77
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 78
    iget-object v5, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v4}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v5

    .line 80
    sget-object v6, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "subId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " stateThisSubId = "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_4a

    move v1, v2

    goto :goto_4d

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_4d
    :goto_4d
    return v1
.end method

.method public removeListener(Lcom/meizu/settings/utils/PhoneStateListenerHepler$OnCallStateChangeListener;)V
    .registers 6

    .line 106
    iget-object v0, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mCallStateChangeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 107
    :try_start_3
    iget-object v1, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mCallStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 108
    iget-object v1, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mCallStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 110
    :cond_10
    iget-object p1, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mCallStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_44

    .line 111
    sget-object p1, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->TAG:Ljava/lang/String;

    const-string v1, "stop updatePhoneStateListeners"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p1, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 113
    invoke-virtual {p1, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 114
    iget-object p1, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mPhoneStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/utils/PhoneStateListenerHepler$PH;

    .line 115
    iget-object v2, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_2c

    .line 117
    :cond_3f
    iget-object p0, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->mPhoneStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 119
    :cond_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw p0
.end method
