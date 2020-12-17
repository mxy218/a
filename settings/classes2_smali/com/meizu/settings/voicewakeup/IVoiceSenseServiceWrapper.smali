.class public Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;
.super Ljava/lang/Object;
.source "IVoiceSenseServiceWrapper.java"


# static fields
.field private static mIVoiceSenseServiceWrapper:Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;


# instance fields
.field DTAG:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field selectedaction:[Ljava/lang/String;

.field selectedkeyword:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    invoke-direct {v0}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;-><init>()V

    sput-object v0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->mIVoiceSenseServiceWrapper:Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IVoiceSenseServiceWrapper"

    .line 25
    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->DTAG:Ljava/lang/String;

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->selectedkeyword:Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->selectedaction:[Ljava/lang/String;

    const-string v1, "persist.sys.audience.chip"

    const-string v2, "eS705:1Mic-ASRA"

    .line 44
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Lcom/meizu/settings/voicewakeup/Constants;->setconfig(Ljava/lang/String;)V

    .line 48
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 49
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;Landroid/content/Context;ZZ)Z
    .registers 4

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->cvqFromDriverSuspendInner(Landroid/content/Context;ZZ)Z

    move-result p0

    return p0
.end method

.method private cvqFromDriverSuspendInner(Landroid/content/Context;ZZ)Z
    .registers 37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, ", "

    const/4 v4, 0x0

    .line 133
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    const-string v5, "Failed to set CVQ Activate KWs"

    const-string v6, "CVQ Activate Keywords"

    const-string v7, "persist.sys.audience.selkw"

    const/4 v8, 0x1

    if-nez p2, :cond_6f

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "mz_smart_voice_wakeup_by_voice"

    invoke-static {v0, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_21

    move v0, v8

    goto :goto_22

    :cond_21
    move v0, v4

    :goto_22
    if-nez v0, :cond_6f

    .line 143
    :try_start_24
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {v1, v6, v0}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->SetValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 144
    iget-object v2, v1, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->DTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cvqFromDriverSuspendInner init= true, reVal="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",kw_sel_flag="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5c

    .line 148
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v7, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    .line 152
    :cond_5c
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v7, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_63} :catch_65

    :goto_63
    move v4, v8

    goto :goto_6e

    :catch_65
    move-exception v0

    .line 155
    iget-object v1, v1, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->DTAG:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6e
    return v4

    .line 163
    :cond_6f
    iget-object v0, v1, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->selectedkeyword:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    iget-object v0, v1, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->selectedkeyword:Ljava/util/ArrayList;

    move/from16 v9, p3

    invoke-static {v2, v0, v9}, Lcom/meizu/settings/voicewakeup/FileOps;->populatekeywords(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    const/16 v9, 0x200

    new-array v10, v9, [B

    const/4 v11, 0x4

    new-array v12, v11, [B

    .line 173
    iget-object v0, v1, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->selectedkeyword:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v13, 0x5

    if-gt v0, v13, :cond_91

    .line 174
    iget-object v0, v1, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->selectedkeyword:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 177
    :cond_91
    iget-object v0, v1, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->DTAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "size_keywords"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    move v14, v0

    move v15, v14

    move/from16 v16, v8

    :goto_ac
    const/4 v9, 0x2

    if-ge v14, v9, :cond_343

    const-string v11, "oemkw"

    if-nez v14, :cond_b5

    move-object v9, v11

    goto :goto_b9

    :cond_b5
    const-string v18, "userkw"

    move-object/from16 v9, v18

    :goto_b9
    move/from16 v18, v16

    move/from16 v16, v15

    move v15, v4

    :goto_be
    if-ge v15, v13, :cond_327

    .line 185
    iget-object v4, v1, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->selectedkeyword:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 193
    iget-object v8, v1, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->DTAG:Ljava/lang/String;

    move/from16 v20, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayName="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2ff

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2ff

    .line 195
    iget-object v8, v1, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->DTAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_121

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "system/etc/firmware/audience/cvqmodels"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-static {v4}, Lcom/meizu/settings/voicewakeup/FileOps;->getfilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_141

    .line 200
    :cond_121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {v4}, Lcom/meizu/settings/voicewakeup/FileOps;->getfilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    :goto_141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "audience-vs-kw-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v16, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ".bin"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x1

    shl-int v16, v13, v15

    or-int v13, v0, v16

    .line 211
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move/from16 v16, v8

    .line 215
    iget-object v8, v1, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->DTAG:Ljava/lang/String;

    move-object/from16 v21, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v11

    const-string v11, "in_file_path %s"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v8, v1, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->DTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "out_file_path %s"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :try_start_1a5
    new-instance v8, Ljava/io/FileInputStream;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 221
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1b9
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1b9} :catch_2e1

    move-object v9, v5

    .line 224
    :try_start_1ba
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 225
    iget-object v0, v1, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->DTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_1ba .. :try_end_1c5} :catch_2d9

    move/from16 v23, v13

    :try_start_1c7
    const-string v13, "#### (Input file size = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ")  ####"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/meizu/settings/voicewakeup/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1db
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_1db} :catch_2cf

    const-wide/16 v24, 0x0

    move-object v11, v6

    move-object v13, v7

    move-wide/from16 v6, v24

    const/4 v0, 0x0

    :goto_1e2
    cmp-long v26, v6, v4

    if-gez v26, :cond_2b8

    cmp-long v26, v24, v6

    if-eqz v26, :cond_1f7

    const/16 v27, 0x1fc

    move-object/from16 v29, v11

    move-object/from16 v28, v12

    move/from16 v32, v27

    move-object/from16 v27, v13

    move/from16 v13, v32

    goto :goto_1ff

    :cond_1f7
    move-object/from16 v29, v11

    move-object/from16 v28, v12

    move-object/from16 v27, v13

    const/16 v13, 0x200

    :goto_1ff
    int-to-long v11, v13

    add-long/2addr v11, v6

    cmp-long v11, v11, v4

    if-lez v11, :cond_208

    sub-long v11, v4, v6

    long-to-int v13, v11

    :cond_208
    const/4 v11, 0x0

    .line 237
    :try_start_209
    invoke-virtual {v8, v10, v11, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v12

    .line 238
    iget-object v11, v1, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->DTAG:Ljava/lang/String;
    :try_end_20f
    .catch Ljava/lang/Exception; {:try_start_209 .. :try_end_20f} :catch_2b4

    move-object/from16 v30, v9

    :try_start_211
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_211 .. :try_end_216} :catch_2b2

    move/from16 v31, v14

    :try_start_218
    const-string v14, "#### (byte counter, req sz, read sz) = ("

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ") ####"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, -0x1

    if-ne v12, v9, :cond_253

    .line 242
    iget-object v0, v1, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->DTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#### End of file ####"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2c2

    :cond_253
    const/4 v11, 0x3

    if-nez v26, :cond_27b

    const/4 v14, 0x2

    .line 248
    aget-byte v19, v10, v14

    and-int/lit8 v9, v19, 0xf

    int-to-byte v9, v9

    add-int/lit8 v19, v15, 0x1

    const/16 v17, 0x4

    shl-int/lit8 v19, v19, 0x4

    and-int/lit8 v19, v19, -0x10

    or-int v9, v19, v9

    int-to-byte v9, v9

    aput-byte v9, v10, v14

    const/4 v9, 0x0

    .line 251
    aget-byte v19, v10, v9

    aput-byte v19, v28, v9

    const/4 v9, 0x1

    .line 252
    aget-byte v19, v10, v9

    aput-byte v19, v28, v9

    .line 253
    aget-byte v9, v10, v14

    aput-byte v9, v28, v14

    .line 254
    aget-byte v9, v10, v11

    aput-byte v9, v28, v11
    :try_end_27b
    .catch Ljava/lang/Exception; {:try_start_218 .. :try_end_27b} :catch_2b0

    :cond_27b
    move v9, v15

    int-to-long v14, v12

    add-long/2addr v6, v14

    cmp-long v14, v6, v4

    if-gez v14, :cond_28b

    if-ne v13, v12, :cond_28b

    add-int/lit8 v13, v0, 0x1

    int-to-byte v13, v13

    :try_start_287
    aput-byte v0, v28, v11

    move v0, v13

    goto :goto_28e

    :cond_28b
    const/4 v13, -0x1

    aput-byte v13, v28, v11
    :try_end_28e
    .catch Ljava/lang/Exception; {:try_start_287 .. :try_end_28e} :catch_2ae

    :goto_28e
    if-eqz v26, :cond_29c

    const/4 v11, 0x0

    const/4 v13, 0x4

    :goto_292
    if-ge v11, v13, :cond_29d

    .line 267
    :try_start_294
    aget-byte v14, v28, v11

    invoke-virtual {v2, v14}, Ljava/io/FileOutputStream;->write(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_292

    :cond_29c
    const/4 v13, 0x4

    :cond_29d
    const/4 v11, 0x0

    .line 271
    invoke-virtual {v2, v10, v11, v12}, Ljava/io/FileOutputStream;->write([BII)V

    move v15, v9

    move-object/from16 v13, v27

    move-object/from16 v12, v28

    move-object/from16 v11, v29

    move-object/from16 v9, v30

    move/from16 v14, v31

    goto/16 :goto_1e2

    :catch_2ae
    move-exception v0

    goto :goto_2ef

    :catch_2b0
    move-exception v0

    goto :goto_2ee

    :catch_2b2
    move-exception v0

    goto :goto_2ec

    :catch_2b4
    move-exception v0

    move-object/from16 v30, v9

    goto :goto_2ec

    :cond_2b8
    move-object/from16 v30, v9

    move-object/from16 v29, v11

    move-object/from16 v28, v12

    move-object/from16 v27, v13

    move/from16 v31, v14

    :goto_2c2
    move v9, v15

    const/4 v13, 0x4

    .line 276
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 277
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2ca
    .catch Ljava/lang/Exception; {:try_start_294 .. :try_end_2ca} :catch_2cd

    move/from16 v0, v23

    goto :goto_30f

    :catch_2cd
    move-exception v0

    goto :goto_2f0

    :catch_2cf
    move-exception v0

    move-object/from16 v29, v6

    move-object/from16 v27, v7

    move-object/from16 v30, v9

    move-object/from16 v28, v12

    goto :goto_2ec

    :catch_2d9
    move-exception v0

    move-object/from16 v29, v6

    move-object/from16 v27, v7

    move-object/from16 v30, v9

    goto :goto_2e8

    :catch_2e1
    move-exception v0

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    move-object/from16 v27, v7

    :goto_2e8
    move-object/from16 v28, v12

    move/from16 v23, v13

    :goto_2ec
    move/from16 v31, v14

    :goto_2ee
    move v9, v15

    :goto_2ef
    const/4 v13, 0x4

    .line 279
    :goto_2f0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 281
    iget-object v0, v1, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->DTAG:Ljava/lang/String;

    const-string v2, "#### Failed to write files ####"

    invoke-static {v0, v2}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, v23

    const/16 v18, 0x0

    goto :goto_30f

    :cond_2ff
    move-object/from16 v30, v5

    move-object/from16 v29, v6

    move-object/from16 v27, v7

    move-object/from16 v21, v9

    move-object/from16 v22, v11

    move-object/from16 v28, v12

    move/from16 v31, v14

    move v9, v15

    const/4 v13, 0x4

    :goto_30f
    add-int/lit8 v15, v9, 0x1

    move-object/from16 v2, p1

    move/from16 v13, v20

    move-object/from16 v9, v21

    move-object/from16 v11, v22

    move-object/from16 v7, v27

    move-object/from16 v12, v28

    move-object/from16 v6, v29

    move-object/from16 v5, v30

    move/from16 v14, v31

    const/4 v4, 0x0

    const/4 v8, 0x1

    goto/16 :goto_be

    :cond_327
    move-object/from16 v30, v5

    move-object/from16 v29, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v12

    move/from16 v20, v13

    move/from16 v31, v14

    const/4 v13, 0x4

    add-int/lit8 v14, v31, 0x1

    move-object/from16 v2, p1

    move v11, v13

    move/from16 v15, v16

    move/from16 v16, v18

    move/from16 v13, v20

    const/4 v4, 0x0

    const/4 v8, 0x1

    goto/16 :goto_ac

    :cond_343
    move-object/from16 v30, v5

    move-object/from16 v29, v6

    move-object/from16 v27, v7

    if-nez p2, :cond_374

    .line 294
    :try_start_34b
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v29

    .line 293
    invoke-virtual {v1, v3, v2}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->SetValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 295
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_369

    .line 297
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v27

    .line 296
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_399

    :cond_369
    move-object/from16 v2, v27

    const/4 v3, 0x0

    .line 301
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_399

    :cond_374
    move-object/from16 v2, v27

    move-object/from16 v3, v29

    const/4 v4, 0x0

    .line 306
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-virtual {v1, v3, v0}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->SetValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 308
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38b
    .catch Ljava/lang/Exception; {:try_start_34b .. :try_end_38b} :catch_38c

    goto :goto_399

    :catch_38c
    move-exception v0

    .line 311
    iget-object v1, v1, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->DTAG:Ljava/lang/String;

    move-object/from16 v2, v30

    invoke-static {v1, v2}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v16, 0x0

    :goto_399
    if-eqz p2, :cond_3b3

    if-nez v16, :cond_3b3

    const-string v0, "boot_copy_oem_wake_word"

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 317
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 319
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "boot_oem_wake"

    const/4 v2, 0x1

    .line 320
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 321
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3b3
    return v16
.end method

.method public static getInstance()Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;
    .registers 1

    .line 54
    sget-object v0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->mIVoiceSenseServiceWrapper:Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    if-nez v0, :cond_b

    .line 55
    new-instance v0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    invoke-direct {v0}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;-><init>()V

    sput-object v0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->mIVoiceSenseServiceWrapper:Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    .line 57
    :cond_b
    sget-object v0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->mIVoiceSenseServiceWrapper:Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    return-object v0
.end method


# virtual methods
.method public GetValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->DTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->DTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#### GetValue() ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ####"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public SetValue(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->DTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#### Setting ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "... ####"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public cvqFromDriverSuspend(Landroid/content/Context;ZZ)V
    .registers 6

    .line 122
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper$1;-><init>(Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;Landroid/content/Context;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getKeyword(Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->DTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getKeyword "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setKeyword(Ljava/lang/String;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->DTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setKeyword "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " id "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
