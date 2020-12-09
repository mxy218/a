.class Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;
.super Lcom/android/server/devicepolicy/Owners$FileReadWriter;
.source "Owners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/Owners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceOwnerReadWriter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/Owners;


# direct methods
.method protected constructor <init>(Lcom/android/server/devicepolicy/Owners;)V
    .registers 2

    .line 811
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    .line 812
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/Owners$FileReadWriter;-><init>(Ljava/io/File;)V

    .line 813
    return-void
.end method


# virtual methods
.method readInner(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;)Z
    .registers 12

    .line 855
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-le p2, v0, :cond_5

    .line 856
    return v1

    .line 858
    :cond_5
    const/4 p2, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    sparse-switch v2, :sswitch_data_106

    :cond_11
    goto :goto_4f

    :sswitch_12
    const-string/jumbo v2, "system-update-policy"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move p2, v5

    goto :goto_4f

    :sswitch_1d
    const-string v2, "freeze-record"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move p2, v3

    goto :goto_4f

    :sswitch_27
    const-string v2, "device-owner-context"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move p2, v1

    goto :goto_4f

    :sswitch_31
    const-string v2, "device-owner"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move p2, v6

    goto :goto_4f

    :sswitch_3b
    const-string v2, "device-initializer"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move p2, v0

    goto :goto_4f

    :sswitch_45
    const-string/jumbo v2, "pending-ota-info"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move p2, v4

    :goto_4f
    if-eqz p2, :cond_f5

    const-string v2, "DevicePolicyManagerService"

    const/4 v7, 0x0

    if-eq p2, v1, :cond_cd

    if-eq p2, v0, :cond_cc

    if-eq p2, v5, :cond_c2

    if-eq p2, v4, :cond_b8

    if-eq p2, v3, :cond_73

    .line 896
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected tag: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    return v6

    .line 883
    :cond_73
    const-string/jumbo p2, "start"

    invoke-interface {p1, v7, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 884
    const-string p3, "end"

    invoke-interface {p1, v7, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 885
    if-eqz p2, :cond_104

    if-eqz p1, :cond_104

    .line 886
    iget-object p3, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {p2}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/server/devicepolicy/Owners;->access$402(Lcom/android/server/devicepolicy/Owners;Ljava/time/LocalDate;)Ljava/time/LocalDate;

    .line 887
    iget-object p2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/devicepolicy/Owners;->access$502(Lcom/android/server/devicepolicy/Owners;Ljava/time/LocalDate;)Ljava/time/LocalDate;

    .line 888
    iget-object p1, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {p1}, Lcom/android/server/devicepolicy/Owners;->access$400(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {p2}, Lcom/android/server/devicepolicy/Owners;->access$500(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result p1

    if-eqz p1, :cond_104

    .line 889
    const-string p1, "Invalid system update freeze record loaded"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object p1, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {p1, v7}, Lcom/android/server/devicepolicy/Owners;->access$402(Lcom/android/server/devicepolicy/Owners;Ljava/time/LocalDate;)Ljava/time/LocalDate;

    .line 891
    iget-object p1, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {p1, v7}, Lcom/android/server/devicepolicy/Owners;->access$502(Lcom/android/server/devicepolicy/Owners;Ljava/time/LocalDate;)Ljava/time/LocalDate;

    goto :goto_104

    .line 880
    :cond_b8
    iget-object p2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {p1}, Landroid/app/admin/SystemUpdateInfo;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/devicepolicy/Owners;->access$202(Lcom/android/server/devicepolicy/Owners;Landroid/app/admin/SystemUpdateInfo;)Landroid/app/admin/SystemUpdateInfo;

    .line 881
    goto :goto_104

    .line 877
    :cond_c2
    iget-object p2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {p1}, Landroid/app/admin/SystemUpdatePolicy;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/devicepolicy/Owners;->access$102(Lcom/android/server/devicepolicy/Owners;Landroid/app/admin/SystemUpdatePolicy;)Landroid/app/admin/SystemUpdatePolicy;

    .line 878
    goto :goto_104

    .line 875
    :cond_cc
    goto :goto_104

    .line 864
    :cond_cd
    nop

    .line 865
    const-string/jumbo p2, "userId"

    invoke-interface {p1, v7, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 867
    :try_start_d5
    iget-object p2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/server/devicepolicy/Owners;->access$302(Lcom/android/server/devicepolicy/Owners;I)I
    :try_end_de
    .catch Ljava/lang/NumberFormatException; {:try_start_d5 .. :try_end_de} :catch_df

    .line 870
    goto :goto_104

    .line 868
    :catch_df
    move-exception p2

    .line 869
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error parsing user-id "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    goto :goto_104

    .line 860
    :cond_f5
    iget-object p2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {p1}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/devicepolicy/Owners;->access$002(Lcom/android/server/devicepolicy/Owners;Lcom/android/server/devicepolicy/Owners$OwnerInfo;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 861
    iget-object p1, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {p1, v6}, Lcom/android/server/devicepolicy/Owners;->access$302(Lcom/android/server/devicepolicy/Owners;I)I

    .line 862
    nop

    .line 900
    :cond_104
    :goto_104
    return v1

    nop

    :sswitch_data_106
    .sparse-switch
        -0x7d4643cb -> :sswitch_45
        -0x7985fa15 -> :sswitch_3b
        -0x786d7384 -> :sswitch_31
        -0x714796a2 -> :sswitch_27
        0x4db6d447 -> :sswitch_1d
        0x6834f798 -> :sswitch_12
    .end sparse-switch
.end method

.method shouldWrite()Z
    .registers 2

    .line 817
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$000(Lcom/android/server/devicepolicy/Owners;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    move-result-object v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$100(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    .line 818
    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$200(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 817
    :goto_1c
    return v0
.end method

.method writeInner(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 823
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$000(Lcom/android/server/devicepolicy/Owners;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 824
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$000(Lcom/android/server/devicepolicy/Owners;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    move-result-object v0

    const-string v2, "device-owner"

    invoke-virtual {v0, p1, v2}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 825
    const-string v0, "device-owner-context"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 826
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v2}, Lcom/android/server/devicepolicy/Owners;->access$300(Lcom/android/server/devicepolicy/Owners;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "userId"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 827
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 830
    :cond_2c
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$100(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 831
    const-string/jumbo v0, "system-update-policy"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 832
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v2}, Lcom/android/server/devicepolicy/Owners;->access$100(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/admin/SystemUpdatePolicy;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 833
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 836
    :cond_46
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$200(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 837
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$200(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v0

    const-string/jumbo v2, "pending-ota-info"

    invoke-virtual {v0, p1, v2}, Landroid/app/admin/SystemUpdateInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 840
    :cond_5a
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$400(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$500(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object v0

    if-eqz v0, :cond_a1

    .line 841
    :cond_6a
    const-string v0, "freeze-record"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 842
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v2}, Lcom/android/server/devicepolicy/Owners;->access$400(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object v2

    if-eqz v2, :cond_87

    .line 843
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    .line 844
    invoke-static {v2}, Lcom/android/server/devicepolicy/Owners;->access$400(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v2

    .line 843
    const-string/jumbo v3, "start"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 846
    :cond_87
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v2}, Lcom/android/server/devicepolicy/Owners;->access$500(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object v2

    if-eqz v2, :cond_9e

    .line 847
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v2}, Lcom/android/server/devicepolicy/Owners;->access$500(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "end"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 849
    :cond_9e
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 851
    :cond_a1
    return-void
.end method
