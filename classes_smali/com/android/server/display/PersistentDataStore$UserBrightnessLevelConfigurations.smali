.class final Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PersistentDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserBrightnessLevelConfigurations"
.end annotation


# instance fields
.field private mConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 833
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;I)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;
    .param p1, "x1"  # Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;
    .param p2, "x2"  # I

    .line 827
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->setUserBrightnessLevelConfigurationForUser(Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;I)Z

    move-result v0

    return v0
.end method

.method private static loadConfigurationFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;
    .registers 15
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 880
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 881
    .local v0, "outerDepth":I
    const/4 v1, 0x0

    .line 882
    .local v1, "description":Ljava/lang/String;
    const/high16 v2, -0x40800000  # -1.0f

    .local v2, "userLux":F
    const/high16 v3, -0x40800000  # -1.0f

    .local v3, "userAdjustment":F
    const/high16 v4, -0x40800000  # -1.0f

    .line 883
    .local v4, "userBrightness":F
    const/4 v5, 0x0

    .line 884
    .local v5, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    :cond_c
    :goto_c
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4b

    .line 885
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "brightness-curve"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 886
    const-string v6, "description"

    invoke-interface {p0, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 887
    const-string/jumbo v6, "user_lux"

    invoke-interface {p0, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->loadFloat(Ljava/lang/String;)F

    move-result v2

    .line 888
    const-string/jumbo v6, "user_adjustment"

    invoke-interface {p0, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->loadFloat(Ljava/lang/String;)F

    move-result v3

    .line 889
    const-string/jumbo v6, "user_brightness"

    invoke-interface {p0, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->loadFloat(Ljava/lang/String;)F

    move-result v4

    .line 890
    invoke-static {p0}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->loadCurveFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_c

    .line 893
    :cond_4b
    if-nez v5, :cond_4e

    .line 894
    return-object v7

    .line 897
    :cond_4e
    new-instance v13, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, [F

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v6

    check-cast v8, [F

    move-object v6, v13

    move-object v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;-><init>([F[FLjava/lang/String;FFF)V

    return-object v13
.end method

.method private static loadCurveFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .registers 9
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 902
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 903
    .local v0, "outerDepth":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 904
    .local v1, "luxLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .local v2, "brightnessLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_e
    :goto_e
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 906
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "brightness-point"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 907
    const/4 v3, 0x0

    const-string/jumbo v4, "lux"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->loadFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    const-string v4, "brightness_level"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->loadFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 911
    :cond_45
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 912
    .local v3, "N":I
    new-array v4, v3, [F

    .line 913
    .local v4, "lux":[F
    new-array v5, v3, [F

    .line 914
    .local v5, "nits":[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4e
    if-ge v6, v3, :cond_6b

    .line 915
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v4, v6

    .line 916
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v5, v6

    .line 914
    add-int/lit8 v6, v6, 0x1

    goto :goto_4e

    .line 918
    .end local v6  # "i":I
    :cond_6b
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6
.end method

.method private static loadFloat(Ljava/lang/String;)F
    .registers 4
    .param p0, "val"  # Ljava/lang/String;

    .line 923
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 924
    :catch_5
    move-exception v0

    .line 925
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed to parse float loading brightness config"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 926
    const/high16 v1, -0x800000  # Float.NEGATIVE_INFINITY

    return v1
.end method

.method private static saveConfigurationToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;)V
    .registers 9
    .param p0, "serializer"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "config"  # Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 944
    const-string v0, "brightness-curve"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 945
    invoke-virtual {p1}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 946
    invoke-virtual {p1}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->getDescription()Ljava/lang/String;

    move-result-object v2

    const-string v3, "description"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 948
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->getUserLux()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user_lux"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 949
    invoke-virtual {p1}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->getUserAdjustment()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user_adjustment"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 950
    invoke-virtual {p1}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->getUserBrightness()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user_brightness"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 951
    invoke-virtual {p1}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v2

    .line 952
    .local v2, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_44
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [F

    array-length v4, v4

    if-ge v3, v4, :cond_75

    .line 953
    const-string v4, "brightness-point"

    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 954
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, [F

    aget v5, v5, v3

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "lux"

    invoke-interface {p0, v1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 955
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [F

    aget v5, v5, v3

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    const-string v6, "brightness_level"

    invoke-interface {p0, v1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 956
    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 952
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 958
    .end local v3  # "i":I
    :cond_75
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 959
    return-void
.end method

.method private setUserBrightnessLevelConfigurationForUser(Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;I)Z
    .registers 5
    .param p1, "c"  # Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;
    .param p2, "userSerial"  # I

    .line 837
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;

    .line 838
    .local v0, "currentConfig":Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;
    if-eq v0, p1, :cond_21

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 839
    :cond_12
    if-eqz p1, :cond_1a

    .line 840
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1f

    .line 842
    :cond_1a
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 844
    :goto_1f
    const/4 v1, 0x1

    return v1

    .line 846
    :cond_21
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 962
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 963
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 964
    .local v1, "userSerial":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 965
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 962
    .end local v1  # "userSerial":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 967
    .end local v0  # "i":I
    :cond_4b
    return-void
.end method

.method public getBrightnessConfiguration(I)Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;
    .registers 3
    .param p1, "userSerial"  # I

    .line 850
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;

    return-object v0
.end method

.method public loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 854
    const-string v0, "DisplayManager"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 855
    .local v1, "outerDepth":I
    :cond_6
    :goto_6
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 856
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "brightness-configuration"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 859
    const/4 v2, 0x0

    :try_start_19
    const-string/jumbo v3, "user-serial"

    .line 860
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 859
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_24} :catch_25

    .line 864
    .local v2, "userSerial":I
    goto :goto_2d

    .line 861
    .end local v2  # "userSerial":I
    :catch_25
    move-exception v2

    .line 862
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    .line 863
    .local v3, "userSerial":I
    const-string v4, "Failed to read in brightness configuration"

    invoke-static {v0, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 867
    .end local v3  # "userSerial":I
    .local v2, "userSerial":I
    :goto_2d
    :try_start_2d
    invoke-static {p1}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->loadConfigurationFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;

    move-result-object v3

    .line 868
    .local v3, "config":Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;
    if-ltz v2, :cond_3a

    if-eqz v3, :cond_3a

    .line 869
    iget-object v4, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_3a} :catch_3b

    .line 873
    .end local v3  # "config":Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;
    :cond_3a
    goto :goto_41

    .line 871
    :catch_3b
    move-exception v3

    .line 872
    .local v3, "iae":Ljava/lang/IllegalArgumentException;
    const-string v4, "Failed to load brightness configuration!"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 874
    .end local v2  # "userSerial":I
    .end local v3  # "iae":Ljava/lang/IllegalArgumentException;
    :goto_41
    goto :goto_6

    .line 876
    :cond_42
    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 9
    .param p1, "serializer"  # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 931
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 932
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 933
    .local v1, "userSerial":I
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;

    .line 935
    .local v2, "config":Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;
    const-string v3, "brightness-configuration"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 936
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "user-serial"

    invoke-interface {p1, v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 937
    invoke-static {p1, v2}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->saveConfigurationToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;)V

    .line 938
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 931
    .end local v1  # "userSerial":I
    .end local v2  # "config":Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 940
    .end local v0  # "i":I
    :cond_30
    return-void
.end method
