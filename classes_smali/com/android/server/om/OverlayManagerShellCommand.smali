.class final Lcom/android/server/om/OverlayManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "OverlayManagerShellCommand.java"


# instance fields
.field private final mInterface:Landroid/content/om/IOverlayManager;


# direct methods
.method constructor <init>(Landroid/content/om/IOverlayManager;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    .line 43
    return-void
.end method

.method private printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V
    .registers 6

    .line 167
    iget v0, p2, Landroid/content/om/OverlayInfo;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    const/4 v2, 0x3

    if-eq v0, v2, :cond_e

    const/4 v2, 0x6

    if-eq v0, v2, :cond_e

    .line 176
    const-string v0, "---"

    goto :goto_15

    .line 170
    :cond_e
    nop

    .line 171
    const-string v0, "[x]"

    goto :goto_15

    .line 173
    :cond_12
    nop

    .line 174
    const-string v0, "[ ]"

    .line 179
    :goto_15
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    iget-object p2, p2, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    aput-object p2, v1, v0

    const-string p2, "%s %s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method private runEnableDisable(Z)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 185
    const/4 v1, 0x0

    move v2, v1

    .line 187
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_42

    .line 188
    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x4f7b216b

    if-eq v5, v6, :cond_18

    :cond_17
    goto :goto_21

    :cond_18
    const-string v5, "--user"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    move v2, v1

    :goto_21
    if-eqz v2, :cond_38

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    return v4

    .line 190
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    .line 191
    nop

    .line 194
    goto :goto_6

    .line 198
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v1, v0, p1, v2}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result p1

    xor-int/2addr p1, v4

    return p1
.end method

.method private runEnableExclusive()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 205
    nop

    .line 206
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 208
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_58

    .line 209
    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x3f3229e

    if-eq v7, v8, :cond_29

    const v8, 0x4f7b216b

    if-eq v7, v8, :cond_1f

    :cond_1e
    goto :goto_32

    :cond_1f
    const-string v7, "--user"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    move v6, v1

    goto :goto_32

    :cond_29
    const-string v7, "--category"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    move v6, v5

    :goto_32
    if-eqz v6, :cond_4e

    if-eq v6, v5, :cond_4b

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    return v5

    .line 214
    :cond_4b
    nop

    .line 215
    move v2, v5

    goto :goto_57

    .line 211
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    .line 212
    nop

    .line 218
    :goto_57
    goto :goto_8

    .line 221
    :cond_58
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 222
    if-eqz v2, :cond_66

    .line 223
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v1, v0, v3}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    move-result v0

    xor-int/2addr v0, v5

    return v0

    .line 225
    :cond_66
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v1, v0, v5, v3}, Landroid/content/om/IOverlayManager;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result v0

    xor-int/2addr v0, v5

    return v0
.end method

.method private runList()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 111
    const/4 v2, 0x0

    move v3, v2

    .line 113
    :goto_a
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_46

    .line 114
    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x4f7b216b

    if-eq v5, v6, :cond_1b

    :cond_1a
    goto :goto_24

    :cond_1b
    const-string v5, "--user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    move v3, v2

    :goto_24
    if-eqz v3, :cond_3c

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x1

    return v0

    .line 116
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    .line 117
    nop

    .line 120
    goto :goto_a

    .line 124
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_7b

    .line 126
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v4, v1, v3}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 130
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_64

    .line 131
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v4, v1, v3}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_63

    .line 133
    invoke-direct {p0, v0, v1}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    .line 135
    :cond_63
    return v2

    .line 138
    :cond_64
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 142
    move v3, v2

    :goto_6c
    if-ge v3, v1, :cond_7a

    .line 143
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/om/OverlayInfo;

    invoke-direct {p0, v0, v5}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_6c

    .line 146
    :cond_7a
    return v2

    .line 150
    :cond_7b
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v1, v3}, Landroid/content/om/IOverlayManager;->getAllOverlays(I)Ljava/util/Map;

    move-result-object v1

    .line 151
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_89
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 152
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 155
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 156
    move v6, v2

    :goto_a3
    if-ge v6, v5, :cond_b1

    .line 157
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/om/OverlayInfo;

    invoke-direct {p0, v0, v7}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    .line 156
    add-int/lit8 v6, v6, 0x1

    goto :goto_a3

    .line 159
    :cond_b1
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 160
    goto :goto_89

    .line 162
    :cond_b5
    return v2
.end method

.method private runSetPriority()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 232
    const/4 v1, 0x0

    move v2, v1

    .line 234
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_42

    .line 235
    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x4f7b216b

    if-eq v5, v6, :cond_18

    :cond_17
    goto :goto_21

    :cond_18
    const-string v5, "--user"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    move v2, v1

    :goto_21
    if-eqz v2, :cond_38

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    return v4

    .line 237
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    .line 238
    nop

    .line 241
    goto :goto_6

    .line 245
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 248
    const-string v3, "highest"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 249
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v1, v0, v2}, Landroid/content/om/IOverlayManager;->setHighestPriority(Ljava/lang/String;I)Z

    move-result v0

    xor-int/2addr v0, v4

    return v0

    .line 250
    :cond_5a
    const-string v3, "lowest"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 251
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v1, v0, v2}, Landroid/content/om/IOverlayManager;->setLowestPriority(Ljava/lang/String;I)Z

    move-result v0

    xor-int/2addr v0, v4

    return v0

    .line 253
    :cond_6a
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v3, v0, v1, v2}, Landroid/content/om/IOverlayManager;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    xor-int/2addr v0, v4

    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 10

    .line 47
    if-nez p1, :cond_7

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 50
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 52
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_a6

    :cond_18
    goto :goto_4c

    :sswitch_19
    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v6

    goto :goto_4d

    :sswitch_23
    const-string v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v3

    goto :goto_4d

    :sswitch_2d
    const-string v2, "enable-exclusive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v5

    goto :goto_4d

    :sswitch_37
    const-string v2, "enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v7

    goto :goto_4d

    :sswitch_41
    const-string/jumbo v2, "set-priority"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v4

    goto :goto_4d

    :goto_4c
    move v2, v1

    :goto_4d
    if-eqz v2, :cond_70

    if-eq v2, v7, :cond_6b

    if-eq v2, v6, :cond_66

    if-eq v2, v5, :cond_61

    if-eq v2, v4, :cond_5c

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 62
    :cond_5c
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runSetPriority()I

    move-result p1

    return p1

    .line 60
    :cond_61
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableExclusive()I

    move-result p1

    return p1

    .line 58
    :cond_66
    invoke-direct {p0, v3}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableDisable(Z)I

    move-result p1

    return p1

    .line 56
    :cond_6b
    invoke-direct {p0, v7}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableDisable(Z)I

    move-result p1

    return p1

    .line 54
    :cond_70
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runList()I

    move-result p1
    :try_end_74
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_74} :catch_8b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_74} :catch_75

    return p1

    .line 68
    :catch_75
    move-exception p1

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a5

    .line 66
    :catch_8b
    move-exception p1

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    nop

    .line 71
    :goto_a5
    return v1

    :sswitch_data_a6
    .sparse-switch
        -0x5120f151 -> :sswitch_41
        -0x4d6ada7d -> :sswitch_37
        -0x2f5d012c -> :sswitch_2d
        0x32b09e -> :sswitch_23
        0x639e22e8 -> :sswitch_19
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 3

    .line 76
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 77
    const-string v1, "Overlay manager (overlay) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string v1, "  dump [--verbose] [--user USER_ID] [[FIELD] PACKAGE]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    const-string v1, "    Print debugging information about the overlay manager."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string v1, "    With optional parameter PACKAGE, limit output to the specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string v1, "    package. With optional parameter FIELD, limit output to"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string v1, "    the value of that SettingsItem field. Field names are"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const-string v1, "    case insensitive and out.println the m prefix can be omitted,"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v1, "    so the following are equivalent: mState, mstate, State, state."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v1, "  list [--user USER_ID] [PACKAGE]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string v1, "    Print information about target and overlay packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string v1, "    Overlay packages are printed in priority order. With optional"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v1, "    parameter PACKAGE, limit output to the specified package."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    const-string v1, "  enable [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string v1, "    Enable overlay package PACKAGE."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v1, "  disable [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string v1, "    Disable overlay package PACKAGE."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string v1, "  enable-exclusive [--user USER_ID] [--category] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string v1, "    Enable overlay package PACKAGE and disable all other overlays for"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string v1, "    its target package. If the --category option is given, only disables"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v1, "    other overlays in the same category."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string v1, "  set-priority [--user USER_ID] PACKAGE PARENT|lowest|highest"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string v1, "    Change the priority of the overlay PACKAGE to be just higher than"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const-string v1, "    the priority of PACKAGE_PARENT If PARENT is the special keyword"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    const-string v1, "    \'lowest\', change priority of PACKAGE to the lowest priority."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    const-string v1, "    If PARENT is the special keyword \'highest\', change priority of"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    const-string v1, "    PACKAGE to the highest priority."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    return-void
.end method
