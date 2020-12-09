.class public final Lcom/android/server/ExtconUEventObserver$ExtconInfo;
.super Ljava/lang/Object;
.source "ExtconUEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ExtconUEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtconInfo"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtconInfo"


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public static getExtconInfos(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/ExtconUEventObserver$ExtconInfo;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-static {}, Lcom/android/server/ExtconUEventObserver;->extconExists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 95
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 97
    :cond_d
    if-nez p0, :cond_11

    const/4 p0, 0x0

    goto :goto_15

    :cond_11
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 98
    :goto_15
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/extcon"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 100
    if-nez v2, :cond_5b

    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " exists "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isDir "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " but listFiles returns null. "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "This probably means the selinux policies need to be changed."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExtconInfo"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 106
    :cond_5b
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    array-length v3, v2

    :goto_62
    if-ge v1, v3, :cond_81

    aget-object v4, v2, v1

    .line 108
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 109
    if-eqz p0, :cond_76

    invoke-virtual {p0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 110
    :cond_76
    new-instance v5, Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    invoke-direct {v5, v4}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 117
    :cond_81
    return-object v0
.end method


# virtual methods
.method public getDevicePath()Ljava/lang/String;
    .registers 7

    .line 142
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "/sys/class/extcon/%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 143
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 145
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 146
    const-string v2, "/devices"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2a} :catch_2c

    return-object v0

    .line 149
    :cond_2b
    return-object v0

    .line 150
    :catch_2c
    move-exception v1

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get the extcon device path for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExtconInfo"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatePath()Ljava/lang/String;
    .registers 5

    .line 158
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/sys/class/extcon/%s/state"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
