.class public Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;
.super Ljava/lang/Object;
.source "EncryptLogger.java"

# interfaces
.implements Lcom/meizu/statsapp/v3/utils/log/ILog;


# instance fields
.field private FILE_NAME:Ljava/lang/String;

.field private MAX_FILE_SIZE:J

.field private OLD_FILE_NAME:Ljava/lang/String;

.field private mDateformat:Ljava/text/SimpleDateFormat;

.field private mEncryptor:Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;

.field private mLogFile:Ljava/io/File;

.field private mMyPid:I

.field private mPath:Ljava/lang/String;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EncryptLogger"

    .line 15
    iput-object v0, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->mTag:Ljava/lang/String;

    const-wide/32 v0, 0xa00000

    .line 16
    iput-wide v0, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->MAX_FILE_SIZE:J

    const-string v0, "usage_logs_v2.txt"

    .line 17
    iput-object v0, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->FILE_NAME:Ljava/lang/String;

    const-string v0, "usage_logs_v2_old.txt"

    .line 18
    iput-object v0, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->OLD_FILE_NAME:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->mPath:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 29
    :cond_27
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 31
    :cond_2a
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->FILE_NAME:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->mLogFile:Ljava/io/File;

    .line 32
    new-instance p1, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;

    const-string v0, "lo"

    invoke-direct {p1, v0}, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->mEncryptor:Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;

    .line 34
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "MM-dd HH:mm:ss.SSS"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->mDateformat:Ljava/text/SimpleDateFormat;

    .line 35
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    iput p1, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->mMyPid:I

    return-void
.end method


# virtual methods
.method public print(Lcom/meizu/statsapp/v3/utils/log/LogLevel;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    const-string v0, "\t"

    .line 41
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    iget-object v2, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->mDateformat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget v2, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->mMyPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    sget-object p4, Lcom/meizu/statsapp/v3/utils/log/LogLevel;->DEBUG:Lcom/meizu/statsapp/v3/utils/log/LogLevel;

    if-ne p1, p4, :cond_33

    const-string p1, "D"

    goto :goto_43

    :cond_33
    sget-object p4, Lcom/meizu/statsapp/v3/utils/log/LogLevel;->INFO:Lcom/meizu/statsapp/v3/utils/log/LogLevel;

    if-ne p1, p4, :cond_3a

    const-string p1, "I"

    goto :goto_43

    :cond_3a
    sget-object p4, Lcom/meizu/statsapp/v3/utils/log/LogLevel;->WARN:Lcom/meizu/statsapp/v3/utils/log/LogLevel;

    if-ne p1, p4, :cond_41

    const-string p1, "W"

    goto :goto_43

    :cond_41
    const-string p1, "E"

    :goto_43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object p1, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->mEncryptor:Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "UTF-8"

    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->encode([B)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 58
    iget-object p3, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->mLogFile:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_b3

    .line 59
    iget-object p3, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->mLogFile:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide p3

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p5

    array-length p5, p5

    int-to-long v0, p5

    add-long/2addr p3, v0

    iget-wide v0, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->MAX_FILE_SIZE:J

    cmp-long p3, p3, v0

    if-lez p3, :cond_b3

    .line 61
    iget-object p3, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->mLogFile:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p3

    .line 62
    new-instance p4, Ljava/io/File;

    iget-object p5, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->OLD_FILE_NAME:Ljava/lang/String;

    invoke-direct {p4, p3, p5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p5

    if-eqz p5, :cond_9c

    .line 64
    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    .line 66
    :cond_9c
    iget-object p4, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->mLogFile:Ljava/io/File;

    new-instance p5, Ljava/io/File;

    iget-object v0, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->OLD_FILE_NAME:Ljava/lang/String;

    invoke-direct {p5, p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, p5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 67
    new-instance p3, Ljava/io/File;

    iget-object p4, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->mPath:Ljava/lang/String;

    iget-object p5, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->FILE_NAME:Ljava/lang/String;

    invoke-direct {p3, p4, p5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->mLogFile:Ljava/io/File;
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b3} :catch_d9

    :cond_b3
    const/4 p3, 0x0

    .line 73
    :try_start_b4
    new-instance p4, Ljava/io/FileWriter;

    iget-object p5, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->mLogFile:Ljava/io/File;

    invoke-direct {p4, p5, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_bb} :catch_d3
    .catchall {:try_start_b4 .. :try_end_bb} :catchall_cc

    .line 74
    :try_start_bb
    invoke-virtual {p4, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string p1, "\r\n"

    .line 75
    invoke-virtual {p4, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c3} :catch_ca
    .catchall {:try_start_bb .. :try_end_c3} :catchall_c7

    .line 79
    :try_start_c3
    invoke-virtual {p4}, Ljava/io/FileWriter;->close()V

    goto :goto_100

    :catchall_c7
    move-exception p1

    move-object p3, p4

    goto :goto_cd

    :catch_ca
    move-object p3, p4

    goto :goto_d3

    :catchall_cc
    move-exception p1

    :goto_cd
    if-eqz p3, :cond_d2

    invoke-virtual {p3}, Ljava/io/FileWriter;->close()V

    :cond_d2
    throw p1

    :catch_d3
    :goto_d3
    if-eqz p3, :cond_100

    invoke-virtual {p3}, Ljava/io/FileWriter;->close()V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_d8} :catch_d9

    goto :goto_100

    :catch_d9
    move-exception p1

    .line 83
    iget-object p0, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;->mTag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " - Cause: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_100
    :goto_100
    return-void
.end method
