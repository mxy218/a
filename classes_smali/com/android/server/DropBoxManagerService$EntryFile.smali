.class final Lcom/android/server/DropBoxManagerService$EntryFile;
.super Ljava/lang/Object;
.source "DropBoxManagerService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntryFile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/DropBoxManagerService$EntryFile;",
        ">;"
    }
.end annotation


# instance fields
.field public final blocks:I

.field public final flags:I

.field public final tag:Ljava/lang/String;

.field public final timestampMillis:J


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "millis"  # J

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 849
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 850
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 851
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 852
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 14
    .param p1, "file"  # Ljava/io/File;
    .param p2, "blockSize"  # I

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    const/4 v0, 0x0

    .line 792
    .local v0, "parseFailure":Z
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 793
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 794
    .local v2, "flags":I
    const/4 v3, 0x0

    .line 795
    .local v3, "tag":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 797
    .local v4, "millis":J
    const/16 v6, 0x40

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 798
    .local v6, "at":I
    const/4 v7, 0x0

    if-gez v6, :cond_17

    .line 799
    const/4 v0, 0x1

    goto :goto_81

    .line 801
    :cond_17
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 802
    const-string v8, ".gz"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 803
    or-int/lit8 v2, v2, 0x4

    .line 804
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 806
    :cond_33
    const-string v8, ".lost"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 807
    or-int/lit8 v2, v2, 0x1

    .line 808
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x5

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_77

    .line 809
    :cond_4a
    const-string v8, ".txt"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_61

    .line 810
    or-int/lit8 v2, v2, 0x2

    .line 811
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_77

    .line 812
    :cond_61
    const-string v8, ".dat"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_76

    .line 813
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_77

    .line 815
    :cond_76
    const/4 v0, 0x1

    .line 817
    :goto_77
    if-nez v0, :cond_81

    .line 819
    :try_start_79
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_7d
    .catch Ljava/lang/NumberFormatException; {:try_start_79 .. :try_end_7d} :catch_7f

    move-wide v4, v8

    .line 822
    goto :goto_81

    .line 820
    :catch_7f
    move-exception v8

    .line 821
    .local v8, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x1

    .line 825
    .end local v8  # "e":Ljava/lang/NumberFormatException;
    :cond_81
    :goto_81
    if-eqz v0, :cond_a9

    .line 826
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid filename: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "DropBoxManagerService"

    invoke-static {v9, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 830
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 831
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 832
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 833
    iput v7, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 834
    return-void

    .line 837
    :cond_a9
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v7

    int-to-long v9, p2

    add-long/2addr v7, v9

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    int-to-long v9, p2

    div-long/2addr v7, v9

    long-to-int v7, v7

    iput v7, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 838
    invoke-static {v3}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 839
    iput v2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 840
    iput-wide v4, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 841
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V
    .registers 13
    .param p1, "temp"  # Ljava/io/File;
    .param p2, "dir"  # Ljava/io/File;
    .param p3, "tag"  # Ljava/lang/String;
    .param p4, "timestampMillis"  # J
    .param p6, "flags"  # I
    .param p7, "blockSize"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    and-int/lit8 v0, p6, 0x1

    if-nez v0, :cond_60

    .line 748
    const-string/jumbo v0, "system_server_native_crash"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "fatal_native_crash"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 749
    :cond_18
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {p3, v0, v1, v2}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->dumpErrorInfo(Ljava/lang/String;III)V

    .line 752
    :cond_1e
    invoke-static {p3}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 753
    iput-wide p4, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 754
    iput p6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 756
    invoke-virtual {p0, p2}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 757
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 760
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    int-to-long v3, p7

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    int-to-long v3, p7

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 761
    return-void

    .line 758
    :cond_41
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t rename "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 746
    .end local v0  # "file":Ljava/io/File;
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;J)V
    .registers 7
    .param p1, "dir"  # Ljava/io/File;
    .param p2, "tag"  # Ljava/lang/String;
    .param p3, "timestampMillis"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 773
    iput-wide p3, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 774
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 775
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 776
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 777
    return-void
.end method

.method private getExtension()Ljava/lang/String;
    .registers 3

    .line 864
    iget v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    .line 865
    const-string v0, ".lost"

    return-object v0

    .line 867
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_17

    const-string v1, ".txt"

    goto :goto_19

    :cond_17
    const-string v1, ".dat"

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    iget v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_25

    const-string v1, ".gz"

    goto :goto_27

    :cond_25
    const-string v1, ""

    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 867
    return-object v0
.end method


# virtual methods
.method public final compareTo(Lcom/android/server/DropBoxManagerService$EntryFile;)I
    .registers 6
    .param p1, "o"  # Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 721
    iget-wide v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget-wide v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 722
    .local v0, "comp":I
    if-eqz v0, :cond_b

    return v0

    .line 724
    :cond_b
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/internal/util/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 725
    if-eqz v0, :cond_16

    return v0

    .line 727
    :cond_16
    iget v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 728
    if-eqz v0, :cond_21

    return v0

    .line 730
    :cond_21
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 712
    check-cast p1, Lcom/android/server/DropBoxManagerService$EntryFile;

    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->compareTo(Lcom/android/server/DropBoxManagerService$EntryFile;)I

    move-result p1

    return p1
.end method

.method public deleteFile(Ljava/io/File;)V
    .registers 3
    .param p1, "dir"  # Ljava/io/File;

    .line 891
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 892
    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 894
    :cond_d
    return-void
.end method

.method public getFile(Ljava/io/File;)Ljava/io/File;
    .registers 4
    .param p1, "dir"  # Ljava/io/File;

    .line 884
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .registers 4

    .line 875
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return-object v0
.end method

.method public hasFile()Z
    .registers 2

    .line 859
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
