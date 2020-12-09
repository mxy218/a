.class abstract Lcom/android/server/devicepolicy/Owners$FileReadWriter;
.super Ljava/lang/Object;
.source "Owners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/Owners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "FileReadWriter"
.end annotation


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method protected constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    .line 698
    return-void
.end method


# virtual methods
.method readFromFileLocked()V
    .registers 8

    .line 754
    const-string v0, "DevicePolicyManagerService"

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    .line 758
    return-void

    .line 763
    :cond_b
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 764
    const/4 v2, 0x0

    .line 766
    :try_start_13
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 767
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 768
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 771
    const/4 v3, 0x0

    .line 772
    :cond_25
    :goto_25
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_73

    .line 773
    const/4 v6, 0x2

    if-eq v4, v6, :cond_36

    const/4 v5, 0x3

    if-eq v4, v5, :cond_33

    goto :goto_35

    .line 778
    :cond_33
    add-int/lit8 v3, v3, -0x1

    .line 781
    :goto_35
    goto :goto_25

    .line 775
    :cond_36
    add-int/lit8 v3, v3, 0x1

    .line 776
    nop

    .line 784
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 785
    if-ne v3, v5, :cond_60

    .line 786
    const-string/jumbo v5, "root"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid root tag: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_5c} :catch_6d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_5c} :catch_6d
    .catchall {:try_start_13 .. :try_end_5c} :catchall_6b

    .line 800
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 788
    return-void

    .line 793
    :cond_60
    :try_start_60
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->readInner(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;)Z

    move-result v4
    :try_end_64
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_60 .. :try_end_64} :catch_6d
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_64} :catch_6d
    .catchall {:try_start_60 .. :try_end_64} :catchall_6b

    if-nez v4, :cond_6a

    .line 800
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 794
    return-void

    .line 796
    :cond_6a
    goto :goto_25

    .line 800
    :catchall_6b
    move-exception v0

    goto :goto_78

    .line 797
    :catch_6d
    move-exception v1

    .line 798
    :try_start_6e
    const-string v3, "Error parsing owners information file"

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_6b

    .line 800
    :cond_73
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 801
    nop

    .line 802
    return-void

    .line 800
    :goto_78
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method abstract readInner(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;)Z
.end method

.method abstract shouldWrite()Z
.end method

.method abstract writeInner(Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method writeToFileLocked()V
    .registers 8

    .line 703
    const-string/jumbo v0, "root"

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->shouldWrite()Z

    move-result v1

    const-string v2, "DevicePolicyManagerService"

    if-nez v1, :cond_36

    .line 708
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 712
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_35

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_35
    return-void

    .line 722
    :cond_36
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-direct {v1, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 723
    nop

    .line 725
    const/4 v3, 0x0

    :try_start_3f
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_43} :catch_6f

    .line 726
    :try_start_43
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 727
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 730
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 731
    invoke-interface {v5, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 734
    invoke-virtual {p0, v5}, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->writeInner(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 737
    invoke-interface {v5, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 738
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 739
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 742
    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_6b} :catch_6d

    .line 743
    nop

    .line 750
    goto :goto_7b

    .line 745
    :catch_6d
    move-exception v0

    goto :goto_71

    :catch_6f
    move-exception v0

    move-object v4, v3

    .line 746
    :goto_71
    const-string v3, "Exception when writing"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 747
    if-eqz v4, :cond_7b

    .line 748
    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 751
    :cond_7b
    :goto_7b
    return-void
.end method
