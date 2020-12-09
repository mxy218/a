.class Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;
.super Ljava/lang/Object;
.source "PackageManagerBackupAgent.java"

# interfaces
.implements Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/PackageManagerBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyRestoreDataConsumer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/PackageManagerBackupAgent;


# direct methods
.method private constructor <init>(Lcom/android/server/backup/PackageManagerBackupAgent;)V
    .registers 2

    .line 670
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/PackageManagerBackupAgent;Lcom/android/server/backup/PackageManagerBackupAgent$1;)V
    .registers 3

    .line 670
    invoke-direct {p0, p1}, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;)V

    return-void
.end method


# virtual methods
.method public consumeRestoreData(Landroid/app/backup/BackupDataInput;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 673
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 674
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 675
    nop

    .line 681
    :goto_b
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 682
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v3

    .line 687
    new-array v4, v3, [B

    .line 688
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 689
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 690
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 692
    const-string v3, "@meta@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 693
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 695
    iget-object v3, p0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-static {v3, v2}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$202(Lcom/android/server/backup/PackageManagerBackupAgent;I)I

    .line 696
    iget-object v2, p0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$302(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/lang/String;)Ljava/lang/String;

    .line 697
    iget-object v2, p0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$402(Lcom/android/server/backup/PackageManagerBackupAgent;Z)Z

    .line 704
    goto :goto_a4

    :cond_44
    const-string v3, "@home@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 705
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 706
    iget-object v3, p0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$502(Lcom/android/server/backup/PackageManagerBackupAgent;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 707
    iget-object v2, p0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$602(Lcom/android/server/backup/PackageManagerBackupAgent;J)J

    .line 708
    iget-object v2, p0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$702(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/lang/String;)Ljava/lang/String;

    .line 709
    iget-object v2, p0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-static {v4}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$900(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$802(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 716
    goto :goto_a4

    .line 718
    :cond_75
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 720
    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_82

    .line 721
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    goto :goto_83

    .line 723
    :cond_82
    int-to-long v5, v3

    .line 725
    :goto_83
    invoke-static {v4}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$900(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object v3

    .line 732
    if-eqz v3, :cond_b3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_90

    goto :goto_b3

    .line 738
    :cond_90
    new-instance v4, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 739
    iput-object v2, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 740
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    new-instance v4, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    iget-object v7, p0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-direct {v4, v7, v5, v6, v3}, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;JLjava/util/ArrayList;)V

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    :goto_a4
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v2

    .line 745
    if-nez v2, :cond_b1

    .line 748
    nop

    .line 753
    iget-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-static {p1, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$1002(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 754
    return-void

    .line 750
    :cond_b1
    goto/16 :goto_b

    .line 733
    :cond_b3
    :goto_b3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not restoring package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " since it appears to have no signatures."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PMBA"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    goto/16 :goto_b
.end method
