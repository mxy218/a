.class Lcom/android/server/locksettings/LockSettingsShellCommand;
.super Landroid/os/ShellCommand;
.source "LockSettingsShellCommand.java"


# static fields
.field private static final COMMAND_CLEAR:Ljava/lang/String; = "clear"

.field private static final COMMAND_GET_DISABLED:Ljava/lang/String; = "get-disabled"

.field private static final COMMAND_HELP:Ljava/lang/String; = "help"

.field private static final COMMAND_SET_DISABLED:Ljava/lang/String; = "set-disabled"

.field private static final COMMAND_SET_PASSWORD:Ljava/lang/String; = "set-password"

.field private static final COMMAND_SET_PATTERN:Ljava/lang/String; = "set-pattern"

.field private static final COMMAND_SET_PIN:Ljava/lang/String; = "set-pin"

.field private static final COMMAND_SP:Ljava/lang/String; = "sp"

.field private static final COMMAND_VERIFY:Ljava/lang/String; = "verify"


# instance fields
.field private mCurrentUserId:I

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNew:Ljava/lang/String;

.field private mOld:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 51
    return-void
.end method

.method private checkCredential()Z
    .registers 6

    .line 234
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v0

    .line 235
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v1

    .line 236
    const/4 v2, 0x0

    if-nez v0, :cond_2a

    if-eqz v1, :cond_16

    goto :goto_2a

    .line 267
    :cond_16
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 268
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Old password provided but user has no password"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    return v2

    .line 271
    :cond_28
    const/4 v0, 0x1

    return v0

    .line 237
    :cond_2a
    :goto_2a
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 238
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Profile uses unified challenge"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    return v2

    .line 244
    :cond_3e
    if-eqz v0, :cond_55

    .line 245
    :try_start_40
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_4c

    :cond_4b
    const/4 v0, 0x0

    .line 246
    :goto_4c
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword([BI)Z

    move-result v0

    .line 247
    goto :goto_6b

    .line 248
    :cond_55
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternSize(I)B

    move-result v0

    .line 249
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    .line 250
    invoke-static {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;B)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 249
    invoke-virtual {v1, v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;I)Z

    move-result v0

    .line 252
    :goto_6b
    if-nez v0, :cond_9e

    .line 253
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    move-result v1

    if-nez v1, :cond_7e

    .line 254
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    .line 256
    :cond_7e
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Old password \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' didn\'t match"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a5

    .line 259
    :cond_9e
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V
    :try_end_a5
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_40 .. :try_end_a5} :catch_a6

    .line 261
    :goto_a5
    return v0

    .line 262
    :catch_a6
    move-exception v0

    .line 263
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Request throttled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    return v2
.end method

.method private parseArgs()V
    .registers 5

    .line 165
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 166
    const-string v1, "--old"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 167
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    goto :goto_0

    .line 168
    :cond_15
    const-string v1, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 169
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    goto :goto_0

    .line 171
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 175
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 176
    return-void
.end method

.method private runChangeSp()V
    .registers 5

    .line 179
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    if-eqz v0, :cond_33

    .line 180
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 181
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->enableSyntheticPassword()V

    .line 182
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Synthetic password enabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_33

    .line 183
    :cond_1b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 184
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->disableSyntheticPassword()V

    .line 185
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Synthetic password disabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    :cond_33
    :goto_33
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 189
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 188
    const-string v2, "SP Enabled = %b"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method private runClear()V
    .registers 4

    .line 217
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 218
    :goto_a
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock([BI)Z

    .line 219
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Lock credential cleared"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method private runGetDisabled()V
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    .line 230
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 231
    return-void
.end method

.method private runSetDisabled()V
    .registers 5

    .line 223
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 224
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 225
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lock screen disabled set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method private runSetPassword()V
    .registers 6

    .line 201
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, v1

    .line 202
    :goto_b
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 203
    :cond_13
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/high16 v3, 0x40000

    iget v4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword([B[BII)Z

    .line 205
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Password set to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method private runSetPattern()V
    .registers 5

    .line 193
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 194
    :goto_a
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternSize(I)B

    move-result v1

    .line 195
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;B)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;[BI)Z

    .line 197
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pattern set to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method private runSetPin()V
    .registers 6

    .line 209
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, v1

    .line 210
    :goto_b
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 211
    :cond_13
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/high16 v3, 0x20000

    iget v4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword([B[BII)Z

    .line 213
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pin set to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method private runVerify()V
    .registers 3

    .line 119
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Lock credential verified successfully"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 11

    .line 55
    if-nez p1, :cond_7

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 59
    :cond_7
    const/4 v0, -0x1

    :try_start_8
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iput v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 61
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->parseArgs()V

    .line 62
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->hasSecureLockScreen()Z

    move-result v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_111

    const-string/jumbo v2, "set-disabled"

    const-string v3, "help"

    const-string v4, "get-disabled"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v1, :cond_66

    .line 63
    :try_start_29
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v8, -0x57d6f0ed

    if-eq v1, v8, :cond_4d

    const v8, 0x30cf41

    if-eq v1, v8, :cond_45

    const v8, 0x47ccf87

    if-eq v1, v8, :cond_3d

    :cond_3c
    goto :goto_55

    :cond_3d
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    move v1, v6

    goto :goto_56

    :cond_45
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    move v1, v5

    goto :goto_56

    :cond_4d
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    move v1, v7

    goto :goto_56

    :goto_55
    move v1, v0

    :goto_56
    if-eqz v1, :cond_66

    if-eq v1, v7, :cond_66

    if-eq v1, v6, :cond_66

    .line 69
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "The device does not support lock screen - ignoring the command."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    return v0

    .line 74
    :cond_66
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->checkCredential()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 75
    return v0

    .line 77
    :cond_6d
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_132

    :cond_74
    goto :goto_cf

    :sswitch_75
    const-string/jumbo v1, "set-pin"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    move v1, v6

    goto :goto_d0

    :sswitch_80
    const-string/jumbo v1, "set-password"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    move v1, v7

    goto :goto_d0

    :sswitch_8b
    const-string v1, "clear"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    const/4 v1, 0x3

    goto :goto_d0

    :sswitch_95
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    const/4 v1, 0x5

    goto :goto_d0

    :sswitch_9d
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    const/16 v1, 0x8

    goto :goto_d0

    :sswitch_a6
    const-string/jumbo v1, "sp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    const/4 v1, 0x4

    goto :goto_d0

    :sswitch_b1
    const-string/jumbo v1, "verify"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    const/4 v1, 0x6

    goto :goto_d0

    :sswitch_bc
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    const/4 v1, 0x7

    goto :goto_d0

    :sswitch_c4
    const-string/jumbo v1, "set-pattern"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    move v1, v5

    goto :goto_d0

    :goto_cf
    move v1, v0

    :goto_d0
    packed-switch v1, :pswitch_data_158

    .line 106
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    goto :goto_fc

    .line 103
    :pswitch_d8  #0x8
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->onHelp()V

    .line 104
    goto :goto_110

    .line 100
    :pswitch_dc  #0x7
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runGetDisabled()V

    .line 101
    goto :goto_110

    .line 97
    :pswitch_e0  #0x6
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runVerify()V

    .line 98
    goto :goto_110

    .line 94
    :pswitch_e4  #0x5
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runSetDisabled()V

    .line 95
    goto :goto_110

    .line 91
    :pswitch_e8  #0x4
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runChangeSp()V

    .line 92
    goto :goto_110

    .line 88
    :pswitch_ec  #0x3
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runClear()V

    .line 89
    goto :goto_110

    .line 85
    :pswitch_f0  #0x2
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runSetPin()V

    .line 86
    goto :goto_110

    .line 82
    :pswitch_f4  #0x1
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runSetPassword()V

    .line 83
    goto :goto_110

    .line 79
    :pswitch_f8  #0x0
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runSetPattern()V

    .line 80
    goto :goto_110

    .line 106
    :goto_fc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_110} :catch_111

    .line 109
    :goto_110
    return v5

    .line 110
    :catch_111
    move-exception v1

    .line 111
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while executing command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 113
    return v0

    :sswitch_data_132
    .sparse-switch
        -0x79d9f6db -> :sswitch_c4
        -0x57d6f0ed -> :sswitch_bc
        -0x30df7787 -> :sswitch_b1
        0xe5d -> :sswitch_a6
        0x30cf41 -> :sswitch_9d
        0x47ccf87 -> :sswitch_95
        0x5a5b64d -> :sswitch_8b
        0x3ce04fa6 -> :sswitch_80
        0x763ee1aa -> :sswitch_75
    .end sparse-switch

    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_f8  #00000000
        :pswitch_f4  #00000001
        :pswitch_f0  #00000002
        :pswitch_ec  #00000003
        :pswitch_e8  #00000004
        :pswitch_e4  #00000005
        :pswitch_e0  #00000006
        :pswitch_dc  #00000007
        :pswitch_d8  #00000008
    .end packed-switch
.end method

.method public onHelp()V
    .registers 4

    .line 124
    const-string v0, ""

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 125
    :try_start_6
    const-string v2, "lockSettings service commands:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    const-string v2, "NOTE: when lock screen is set, all commands require the --old <CREDENTIAL> argument."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    const-string v2, "  help"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    const-string v2, "    Prints this help text."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    const-string v2, "  get-disabled [--old <CREDENTIAL>] [--user USER_ID]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    const-string v2, "    Checks whether lock screen is disabled."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    const-string v2, "  set-disabled [--old <CREDENTIAL>] [--user USER_ID] <true|false>"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    const-string v2, "    When true, disables lock screen."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    const-string v2, "  set-pattern [--old <CREDENTIAL>] [--user USER_ID] <PATTERN>"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    const-string v2, "    Sets the lock screen as pattern, using the given PATTERN to unlock."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    const-string v2, "  set-pin [--old <CREDENTIAL>] [--user USER_ID] <PIN>"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    const-string v2, "    Sets the lock screen as PIN, using the given PIN to unlock."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    const-string v2, "  set-pin [--old <CREDENTIAL>] [--user USER_ID] <PASSWORD>"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    const-string v2, "    Sets the lock screen as password, using the given PASSOWRD to unlock."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    const-string v2, "  sp [--old <CREDENTIAL>] [--user USER_ID]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    const-string v2, "    Gets whether synthetic password is enabled."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    const-string v2, "  sp [--old <CREDENTIAL>] [--user USER_ID] <1|0>"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    const-string v2, "    Enables / disables synthetic password."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    const-string v2, "  clear [--old <CREDENTIAL>] [--user USER_ID]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    const-string v2, "    Clears the lock credentials."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    const-string v2, "  verify [--old <CREDENTIAL>] [--user USER_ID]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    const-string v2, "    Verifies the lock credentials."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_98
    .catchall {:try_start_6 .. :try_end_98} :catchall_9c

    .line 160
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 161
    return-void

    .line 124
    :catchall_9c
    move-exception v0

    :try_start_9d
    throw v0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9e

    .line 160
    :catchall_9e
    move-exception v2

    if-eqz v1, :cond_a9

    :try_start_a1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_a5

    goto :goto_a9

    :catchall_a5
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a9
    :goto_a9
    throw v2
.end method
