.class public Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;
.super Ljava/lang/Object;
.source "FlymeStatusBarPluginImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNoShowEmergencyOnly:Ljava/lang/Boolean;

.field private mShowAllNoSim:Ljava/lang/Boolean;

.field private mShowSuffix:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZZ)V
    .registers 7

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 132
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->mShowSuffix:Z

    .line 134
    iput-object v1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->mNoShowEmergencyOnly:Ljava/lang/Boolean;

    .line 135
    iput-object v1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->mShowAllNoSim:Ljava/lang/Boolean;

    .line 138
    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->mShowSuffix:Z

    .line 139
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->mNoShowEmergencyOnly:Ljava/lang/Boolean;

    .line 140
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->mShowAllNoSim:Ljava/lang/Boolean;

    .line 141
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->mContext:Landroid/content/Context;

    return-void
.end method

.method private append3GSurfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 301
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "zh"

    .line 302
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const-string p1, "3G"

    .line 303
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_14
    const-string p1, " 3G"

    .line 305
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :goto_19
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private append4GSurfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 283
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "zh"

    .line 284
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const-string p1, "4G"

    .line 285
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_14
    const-string p1, " 4G"

    .line 287
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :goto_19
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private append5GSurfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 265
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "zh"

    .line 266
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const-string p1, "5G"

    .line 267
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_14
    const-string p1, " 5G"

    .line 269
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :goto_19
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private appendSurfix(Ljava/lang/String;Ljava/lang/String;Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Ljava/lang/String;
    .registers 5

    .line 244
    invoke-static {p3}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->isShow4G(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 245
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->append4GSurfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 246
    :cond_b
    invoke-static {p3}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->isShow5G(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 247
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->append5GSurfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 249
    :cond_16
    invoke-static {p3}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->isShow3G(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Z

    move-result p3

    if-eqz p3, :cond_21

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->append3GSurfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    return-object p1
.end method


# virtual methods
.method public mergeNetWorkNames([Lcom/android/systemui/statusbar/policy/MobileSignalController;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 195
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/SIMHelper;->getSlotCount()I

    move-result v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mergeNetWorkNames: simCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",controllerSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",separator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",noSIMString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mShowAllNoSim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->mShowAllNoSim:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlymeStatusBarPluginImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_e0

    .line 202
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->mShowAllNoSim:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_a2

    .line 203
    new-array p0, v0, [Ljava/lang/String;

    move v3, v1

    :goto_4c
    if-ge v3, v0, :cond_53

    .line 205
    aput-object p3, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 207
    :cond_53
    array-length p3, p1

    if-lez p3, :cond_85

    .line 208
    :goto_56
    array-length p3, p1

    if-ge v1, p3, :cond_85

    .line 209
    aget-object p3, p1, v1

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result p3

    .line 210
    array-length v0, p0

    if-ge p3, v0, :cond_82

    if-ltz p3, :cond_82

    .line 211
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getLabel()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, p3

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mergeNetWorkNames: network="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, p0, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 216
    :cond_85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mergeNetWorkNames: return="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p2}, Lcom/flyme/systemui/statusbar/utils/StringUtils;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {p0, p2}, Lcom/flyme/systemui/statusbar/utils/StringUtils;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 219
    :cond_a2
    array-length p0, p1

    if-le p0, v3, :cond_e0

    move p0, v1

    .line 220
    :goto_a6
    array-length p3, p1

    sub-int/2addr p3, v3

    if-ge p0, p3, :cond_ca

    move p3, v3

    .line 221
    :goto_ab
    array-length v0, p1

    if-ge p3, v0, :cond_c7

    .line 222
    aget-object v0, p1, p0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v0

    aget-object v2, p1, p3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v2

    if-le v0, v2, :cond_c4

    .line 223
    aget-object v0, p1, p3

    .line 224
    aget-object v2, p1, p0

    aput-object v2, p1, p3

    .line 225
    aput-object v0, p1, p0

    :cond_c4
    add-int/lit8 p3, p3, 0x1

    goto :goto_ab

    :cond_c7
    add-int/lit8 p0, p0, 0x1

    goto :goto_a6

    .line 229
    :cond_ca
    array-length p0, p1

    new-array p0, p0, [Ljava/lang/String;

    .line 230
    :goto_cd
    array-length p3, p1

    if-ge v1, p3, :cond_db

    .line 231
    aget-object p3, p1, v1

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getLabel()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_cd

    .line 233
    :cond_db
    invoke-static {p0, p2}, Lcom/flyme/systemui/statusbar/utils/StringUtils;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 237
    :cond_e0
    array-length p0, p1

    if-lez p0, :cond_ea

    .line 238
    aget-object p0, p1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_ea
    return-object p3
.end method

.method public updateShowNetWorkName(Ljava/lang/String;Ljava/lang/String;Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Ljava/lang/String;
    .registers 7

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateShowNetWorkName: netWorkName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",netWorkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeStatusBarPluginImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_31

    .line 187
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    .line 188
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateShowNetWorkName: language="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mShowSuffix="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->mShowSuffix:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->mShowSuffix:Z

    if-eqz v0, :cond_58

    invoke-direct {p0, p1, p2, p3}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->appendSurfix(Ljava/lang/String;Ljava/lang/String;Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Ljava/lang/String;

    move-result-object p1

    :cond_58
    return-object p1
.end method
