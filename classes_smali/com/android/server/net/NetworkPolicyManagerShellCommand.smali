.class Lcom/android/server/net/NetworkPolicyManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "NetworkPolicyManagerShellCommand.java"


# instance fields
.field private final mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 40
    const-string/jumbo p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 41
    return-void
.end method

.method private addAppIdleWhitelist()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->setAppIdleWhitelist(Z)I

    move-result v0

    return v0
.end method

.method private addRestrictBackgroundBlacklist()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->setUidPolicy(I)I

    move-result v0

    return v0
.end method

.method private addRestrictBackgroundWhitelist()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->setUidPolicy(I)I

    move-result v0

    return v0
.end method

.method private getNextBooleanArg()I
    .registers 3

    .line 374
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 375
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 376
    if-nez v1, :cond_11

    .line 377
    const-string v1, "Error: didn\'t specify BOOLEAN"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    const/4 v0, -0x1

    return v0

    .line 380
    :cond_11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private getRestrictBackground()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 239
    const-string v1, "Restrict background status: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackground()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "enabled"

    goto :goto_16

    :cond_14
    const-string v1, "disabled"

    :goto_16
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method private getUidFromNextArg()I
    .registers 5

    .line 384
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 385
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 386
    if-nez v1, :cond_11

    .line 387
    const-string v1, "Error: didn\'t specify UID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    const/4 v0, -0x1

    return v0

    .line 391
    :cond_11
    :try_start_11
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_16

    return v0

    .line 392
    :catch_16
    move-exception v2

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: UID ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") should be a number"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    const/4 v0, -0x2

    return v0
.end method

.method private listAppIdleWhitelist()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 233
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getAppIdleWhitelist()[I

    move-result-object v0

    .line 234
    const-string v1, "App Idle whitelisted UIDs"

    invoke-direct {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listUidList(Ljava/lang/String;[I)I

    move-result v0

    return v0
.end method

.method private listRestrictBackgroundBlacklist()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    const-string v0, "Restrict background blacklisted UIDs"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listUidPolicies(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private listRestrictBackgroundWhitelist()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    const-string v0, "Restrict background whitelisted UIDs"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listUidPolicies(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private listUidList(Ljava/lang/String;[I)I
    .registers 6

    .line 206
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 207
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    array-length p1, p2

    const/4 v1, 0x0

    if-nez p1, :cond_17

    .line 209
    const-string/jumbo p1, "none"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_28

    .line 211
    :cond_17
    move p1, v1

    :goto_18
    array-length v2, p2

    if-ge p1, v2, :cond_28

    .line 212
    aget v2, p2, p1

    .line 213
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 214
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 211
    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    .line 217
    :cond_28
    :goto_28
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 218
    return v1
.end method

.method private listUidPolicies(Ljava/lang/String;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    move-result-object p2

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listUidList(Ljava/lang/String;[I)I

    move-result p1

    return p1
.end method

.method private listWifiNetworks()I
    .registers 8

    .line 318
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 319
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 321
    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 322
    move v3, v2

    goto :goto_16

    .line 323
    :cond_d
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 324
    const/4 v3, 0x1

    goto :goto_16

    .line 326
    :cond_15
    const/4 v3, 0x2

    .line 329
    :goto_16
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 330
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 331
    if-eqz v1, :cond_32

    iget v6, v5, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    if-ne v6, v3, :cond_47

    .line 332
    :cond_32
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    const/16 v6, 0x3b

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 334
    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->overrideToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    :cond_47
    goto :goto_20

    .line 337
    :cond_48
    return v2
.end method

.method private static overrideToString(I)Ljava/lang/String;
    .registers 2

    .line 358
    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    .line 361
    const-string/jumbo p0, "none"

    return-object p0

    .line 360
    :cond_a
    const-string p0, "false"

    return-object p0

    .line 359
    :cond_d
    const-string/jumbo p0, "true"

    return-object p0
.end method

.method private removeAppIdleWhitelist()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->setAppIdleWhitelist(Z)I

    move-result v0

    return v0
.end method

.method private removeRestrictBackgroundBlacklist()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    const-string/jumbo v0, "not blacklisted"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->resetUidPolicy(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private removeRestrictBackgroundWhitelist()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    const-string/jumbo v0, "not whitelisted"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->resetUidPolicy(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private resetUidPolicy(Ljava/lang/String;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    move-result v0

    .line 271
    if-gez v0, :cond_7

    .line 272
    return v0

    .line 274
    :cond_7
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v1

    .line 275
    if-eq v1, p2, :cond_25

    .line 276
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p2

    .line 277
    const-string v1, "Error: UID "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    const/4 p1, -0x1

    return p1

    .line 280
    :cond_25
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 281
    return p2
.end method

.method private runAdd()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 165
    const/4 v2, -0x1

    if-nez v1, :cond_11

    .line 166
    const-string v1, "Error: didn\'t specify type of data to add"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    return v2

    .line 169
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x645dc946

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_3d

    const v4, -0x27d90651

    if-eq v3, v4, :cond_32

    const v4, 0x261f10d9

    if-eq v3, v4, :cond_27

    :cond_26
    goto :goto_47

    :cond_27
    const-string/jumbo v3, "restrict-background-whitelist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    goto :goto_48

    :cond_32
    const-string/jumbo v3, "restrict-background-blacklist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    move v3, v6

    goto :goto_48

    :cond_3d
    const-string v3, "app-idle-whitelist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    move v3, v5

    goto :goto_48

    :goto_47
    move v3, v2

    :goto_48
    if-eqz v3, :cond_72

    if-eq v3, v6, :cond_6d

    if-eq v3, v5, :cond_68

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown add type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    return v2

    .line 175
    :cond_68
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->addAppIdleWhitelist()I

    move-result v0

    return v0

    .line 173
    :cond_6d
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->addRestrictBackgroundBlacklist()I

    move-result v0

    return v0

    .line 171
    :cond_72
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->addRestrictBackgroundWhitelist()I

    move-result v0

    return v0
.end method

.method private runGet()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 110
    const/4 v2, -0x1

    if-nez v1, :cond_11

    .line 111
    const-string v1, "Error: didn\'t specify type of data to get"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    return v2

    .line 114
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x2c87c721

    if-eq v3, v4, :cond_1b

    :cond_1a
    goto :goto_26

    :cond_1b
    const-string/jumbo v3, "restrict-background"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x0

    goto :goto_27

    :goto_26
    move v3, v2

    :goto_27
    if-eqz v3, :cond_43

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown get type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    return v2

    .line 116
    :cond_43
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getRestrictBackground()I

    move-result v0

    return v0
.end method

.method private runList()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 144
    const/4 v2, -0x1

    if-nez v1, :cond_11

    .line 145
    const-string v1, "Error: didn\'t specify type of data to list"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    return v2

    .line 148
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_7e

    :cond_1b
    goto :goto_47

    :sswitch_1c
    const-string/jumbo v3, "restrict-background-whitelist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move v3, v5

    goto :goto_48

    :sswitch_27
    const-string/jumbo v3, "wifi-networks"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move v3, v6

    goto :goto_48

    :sswitch_32
    const-string/jumbo v3, "restrict-background-blacklist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move v3, v4

    goto :goto_48

    :sswitch_3d
    const-string v3, "app-idle-whitelist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x0

    goto :goto_48

    :goto_47
    move v3, v2

    :goto_48
    if-eqz v3, :cond_79

    if-eq v3, v6, :cond_74

    if-eq v3, v5, :cond_6f

    if-eq v3, v4, :cond_6a

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown list type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    return v2

    .line 156
    :cond_6a
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listRestrictBackgroundBlacklist()I

    move-result v0

    return v0

    .line 154
    :cond_6f
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listRestrictBackgroundWhitelist()I

    move-result v0

    return v0

    .line 152
    :cond_74
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listWifiNetworks()I

    move-result v0

    return v0

    .line 150
    :cond_79
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listAppIdleWhitelist()I

    move-result v0

    return v0

    :sswitch_data_7e
    .sparse-switch
        -0x645dc946 -> :sswitch_3d
        -0x27d90651 -> :sswitch_32
        -0x15ab1843 -> :sswitch_27
        0x261f10d9 -> :sswitch_1c
    .end sparse-switch
.end method

.method private runRemove()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 184
    const/4 v2, -0x1

    if-nez v1, :cond_11

    .line 185
    const-string v1, "Error: didn\'t specify type of data to remove"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    return v2

    .line 188
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x645dc946

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_3d

    const v4, -0x27d90651

    if-eq v3, v4, :cond_32

    const v4, 0x261f10d9

    if-eq v3, v4, :cond_27

    :cond_26
    goto :goto_47

    :cond_27
    const-string/jumbo v3, "restrict-background-whitelist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    goto :goto_48

    :cond_32
    const-string/jumbo v3, "restrict-background-blacklist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    move v3, v6

    goto :goto_48

    :cond_3d
    const-string v3, "app-idle-whitelist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    move v3, v5

    goto :goto_48

    :goto_47
    move v3, v2

    :goto_48
    if-eqz v3, :cond_72

    if-eq v3, v6, :cond_6d

    if-eq v3, v5, :cond_68

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown remove type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    return v2

    .line 194
    :cond_68
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->removeAppIdleWhitelist()I

    move-result v0

    return v0

    .line 192
    :cond_6d
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->removeRestrictBackgroundBlacklist()I

    move-result v0

    return v0

    .line 190
    :cond_72
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->removeRestrictBackgroundWhitelist()I

    move-result v0

    return v0
.end method

.method private runSet()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 125
    const/4 v2, -0x1

    if-nez v1, :cond_11

    .line 126
    const-string v1, "Error: didn\'t specify type of data to set"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    return v2

    .line 129
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x3a9b30b7

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_3d

    const v4, -0x2c87c721

    if-eq v3, v4, :cond_32

    const v4, 0x6e1614bc

    if-eq v3, v4, :cond_27

    :cond_26
    goto :goto_47

    :cond_27
    const-string/jumbo v3, "sub-plan-owner"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    move v3, v5

    goto :goto_48

    :cond_32
    const-string/jumbo v3, "restrict-background"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    move v3, v6

    goto :goto_48

    :cond_3d
    const-string v3, "metered-network"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    goto :goto_48

    :goto_47
    move v3, v2

    :goto_48
    if-eqz v3, :cond_72

    if-eq v3, v6, :cond_6d

    if-eq v3, v5, :cond_68

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown set type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    return v2

    .line 135
    :cond_68
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->setSubPlanOwner()I

    move-result v0

    return v0

    .line 133
    :cond_6d
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->setRestrictBackground()I

    move-result v0

    return v0

    .line 131
    :cond_72
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->setMeteredWifiNetwork()I

    move-result v0

    return v0
.end method

.method private setAppIdleWhitelist(Z)I
    .registers 4

    .line 301
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    move-result v0

    .line 302
    if-gez v0, :cond_7

    .line 303
    return v0

    .line 305
    :cond_7
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setAppIdleWhitelist(IZ)V

    .line 306
    const/4 p1, 0x0

    return p1
.end method

.method private setMeteredWifiNetwork()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 342
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 343
    const/4 v2, -0x1

    if-nez v1, :cond_11

    .line 344
    const-string v1, "Error: didn\'t specify networkId"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    return v2

    .line 347
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 348
    if-nez v3, :cond_1d

    .line 349
    const-string v1, "Error: didn\'t specify meteredOverride"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    return v2

    .line 352
    :cond_1d
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->stringToOverride(Ljava/lang/String;)I

    move-result v3

    .line 352
    invoke-virtual {v0, v1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setWifiMeteredOverride(Ljava/lang/String;I)V

    .line 354
    return v2
.end method

.method private setRestrictBackground()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextBooleanArg()I

    move-result v0

    .line 246
    if-gez v0, :cond_7

    .line 247
    return v0

    .line 249
    :cond_7
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v2, 0x0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 250
    return v2
.end method

.method private setSubPlanOwner()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 255
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 256
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setSubscriptionPlansOwner(ILjava/lang/String;)V

    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method private setUidPolicy(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    move-result v0

    .line 262
    if-gez v0, :cond_7

    .line 263
    return v0

    .line 265
    :cond_7
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 266
    const/4 p1, 0x0

    return p1
.end method

.method private static stringToOverride(Ljava/lang/String;)I
    .registers 5

    .line 366
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x36758e

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1b

    const v1, 0x5cb1923

    if-eq v0, v1, :cond_11

    :cond_10
    goto :goto_26

    :cond_11
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    move p0, v3

    goto :goto_27

    :cond_1b
    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    move p0, v2

    goto :goto_27

    :goto_26
    const/4 p0, -0x1

    :goto_27
    if-eqz p0, :cond_2e

    if-eq p0, v3, :cond_2c

    .line 369
    return v2

    .line 368
    :cond_2c
    const/4 p0, 0x2

    return p0

    .line 367
    :cond_2e
    return v3
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 9

    .line 45
    if-nez p1, :cond_7

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 48
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 50
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_8c

    :cond_17
    goto :goto_4c

    :sswitch_18
    const-string v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v2, v5

    goto :goto_4d

    :sswitch_22
    const-string/jumbo v2, "set"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v2, v6

    goto :goto_4d

    :sswitch_2d
    const-string v2, "get"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x0

    goto :goto_4d

    :sswitch_37
    const-string v2, "add"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v2, v4

    goto :goto_4d

    :sswitch_41
    const-string/jumbo v2, "remove"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v2, v3

    goto :goto_4d

    :goto_4c
    move v2, v1

    :goto_4d
    if-eqz v2, :cond_70

    if-eq v2, v6, :cond_6b

    if-eq v2, v5, :cond_66

    if-eq v2, v4, :cond_61

    if-eq v2, v3, :cond_5c

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 60
    :cond_5c
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runRemove()I

    move-result p1

    return p1

    .line 58
    :cond_61
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runAdd()I

    move-result p1

    return p1

    .line 56
    :cond_66
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runList()I

    move-result p1

    return p1

    .line 54
    :cond_6b
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runSet()I

    move-result p1

    return p1

    .line 52
    :cond_70
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runGet()I

    move-result p1
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_74} :catch_75

    return p1

    .line 64
    :catch_75
    move-exception p1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    return v1

    nop

    :sswitch_data_8c
    .sparse-switch
        -0x37b5077c -> :sswitch_41
        0x178a1 -> :sswitch_37
        0x18f56 -> :sswitch_2d
        0x1bc62 -> :sswitch_22
        0x32b09e -> :sswitch_18
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 3

    .line 72
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 73
    const-string v1, "Network policy manager (netpolicy) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const-string v1, "  add restrict-background-whitelist UID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v1, "    Adds a UID to the whitelist for restrict background usage."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string v1, "  add restrict-background-blacklist UID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string v1, "    Adds a UID to the blacklist for restrict background usage."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    const-string v1, "  add app-idle-whitelist UID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string v1, "    Adds a UID to the temporary app idle whitelist."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string v1, "  get restrict-background"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string v1, "    Gets the global restrict background usage status."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const-string v1, "  list wifi-networks [true|false]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v1, "    Lists all saved wifi networks and whether they are metered or not."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v1, "    If a boolean argument is passed, filters just the metered (or unmetered)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string v1, "    networks."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string v1, "  list restrict-background-whitelist"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v1, "    Lists UIDs that are whitelisted for restrict background usage."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    const-string v1, "  list restrict-background-blacklist"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string v1, "    Lists UIDs that are blacklisted for restrict background usage."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v1, "  remove restrict-background-whitelist UID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string v1, "    Removes a UID from the whitelist for restrict background usage."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string v1, "  remove restrict-background-blacklist UID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string v1, "    Removes a UID from the blacklist for restrict background usage."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string v1, "  remove app-idle-whitelist UID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v1, "    Removes a UID from the temporary app idle whitelist."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string v1, "  set metered-network ID [undefined|true|false]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string v1, "    Toggles whether the given wi-fi network is metered."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const-string v1, "  set restrict-background BOOLEAN"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    const-string v1, "    Sets the global restrict background usage status."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    const-string v1, "  set sub-plan-owner subId [packageName]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    const-string v1, "    Sets the data plan owner package for subId."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    return-void
.end method